<?php

class MysqlClass{
	
	
	
	private $nomehost = "localhost";     
	private $nomeuser = "root";          
	private $password = "root";
	private $nomedb = "Hypermedia";		
	
	
	
	
	// l'inserimento in tabella
	public function inserisci($tabella,$campi,$valori = null){
		$conn = new PDO('mysql:host='.$this->nomehost.';dbname='.$this->nomedb,$this->nomeuser,$this->password);
		
		// costruisco array
		if(!is_array($campi)){
			$r[0]=$campi;
		}else{
			$r=$campi;
		}
		if(!is_array($valori)){
			$v[0]=$valori;
		}else{
			$v=$valori;
		}
		
		if(count($r) != count($v))
			die('Devi dare lo stesso numero di campi e valori!');
		
		$campi=implode(',',$r);
		$segnaposti=implode(',:',$r);
		$segnaposti=':'.$segnaposti;
		
		
		$assoc=array();
		foreach($r as $key => $val){
			$assoc[':'.$val]=$v[$key];
		}
		
		
		$sql="INSERT INTO $tabella ($campi) VALUES ($segnaposti)";
		$q=$conn->prepare($sql);
		$q->execute($assoc);
		
		return $conn->lastInsertId();
			
		
	}
	
	
	// estrai colonna o tutta tabella (se col=='')
	public function estrai($tabella,$campi='',$valori='',$col='*',$more='',$cerca_campi='',$cerca_valori='',$assoc_by_id=0,$distinct=''){
		$conn = new PDO('mysql:host='.$this->nomehost.';dbname='.$this->nomedb,$this->nomeuser,$this->password);
		
		if(!is_array($campi)){
			$r[0]=$campi;
		}else{
			$r=$campi;
		}
		if(!is_array($valori)){
			$v[0]=$valori;
		}else{
			$v=$valori;
		}
		
		if(count($r) != count($v))
			die('Devi dare lo stesso numero di campi e valori!');
		
		if(!is_array($cerca_campi)){
			$c_r[0]=$cerca_campi;
		}else{
			$c_r=$cerca_campi;
		}
		
		$c_v=str_replace(' ','%',$cerca_valori);
		
		if(is_array($col))
			$col=implode(',',$col);	
		
		$sql="SELECT $col FROM $tabella";
		
		
		$and=0;
		
		if(($r[0] != '' && $v[0] != '') || ($c_r[0] != '' && $c_v[0] != '')){
			$sql.=' WHERE';
			$assoc=array();
			
			if($r[0] != '' && $v[0] != '')
				foreach($r as $key => $val){
					if($and)
						$sql.=' AND';
					else
						$and=1;
						
					$sql.=' '.$val.' = :'.$val;
					$assoc[':'.$val]=$v[$key];
				}
				
			if($c_r[0] != ''){
				if($and)
					$sql.=' AND';
				$sql.=' LOWER(CONCAT('.implode(',',$c_r).')) LIKE LOWER(:'.$c_r[0].')';
				$assoc[':'.$c_r[0]]='%'.$c_v.'%';
				$and=1;
			}
			
		}
		$sql.=' '.$more;
		
		
		
		$q=$conn->prepare($sql);
		if($and)
			$q->execute($assoc);
		else
			$q->execute();
		
		while($row = $q->fetch(PDO::FETCH_ASSOC)){
			if($assoc_by_id)
					$result[$row['id']]=$row;
			$result[]=$row;
		}
		
		
		if(isset($result))
			return $result;
		else
			return false;
		
	}
	
	
	// elimina riga da una tabella
	public function elimina($tabella,$campi=false,$valori=false){
		$conn = new PDO('mysql:host='.$this->nomehost.';dbname='.$this->nomedb,$this->nomeuser,$this->password);
		
		
		if(!$campi || !$valori)
			die('Devi inserire campi e valori della riga da eliminare');
			
			
		if(!is_array($campi)){
			$r[0]=$campi;
		}else{
			$r=$campi;
		}
		if(!is_array($valori)){
			$v[0]=$valori;
		}else{
			$v=$valori;
		}
		
		if(count($r) != count($v))
			die('I campi devono essere quanti i valori');
		
		$and=0;
		$sql="DELETE FROM $tabella WHERE ";
		
		
		foreach($r as $key => $val){
				if($and)
					$sql.=' AND';
				else
					$and=1;
					
				$sql.=' '.$val.' = :'.$val;
				$assoc[':'.$val]=$v[$key];
			}
			
		$q=$conn->prepare($sql);
		$q->execute($assoc);
		
		return true;
		
		
	}
	
	
	// modifica dati
	public function modifica($tabella,$campi=false,$valori='',$campi_da_modificare=false,$nuovi_valori=''){
		$conn = new PDO('mysql:host='.$this->nomehost.';dbname='.$this->nomedb,$this->nomeuser,$this->password);
		
		if(!$campi || !$campi_da_modificare){
			die('Devi dare i nomi dei campi!');
		}
		
		if(!is_array($campi)){
			$r[0]=$campi;
		}else{
			$r=$campi;
		}
		if(!is_array($valori)){
			$v[0]=$valori;
		}else{
			$v=$valori;
		}
		
		if(count($r) != count($v))
			die('I campi devono essere quanti i valori');
		
		if(!is_array($campi_da_modificare)){
			$m_r[0]=$campi_da_modificare;
		}else{
			$m_r=$campi_da_modificare;
		}
		if(!is_array($nuovi_valori)){
			$m_v[0]=$nuovi_valori;
		}else{
			$m_v=$nuovi_valori;
		}
		
		if(count($m_r) != count($m_v))
			die('I campi devono essere quanti i valori');
		
		$sql="UPDATE $tabella SET";
		
		$and=0;
		foreach($m_r as $key => $val){
			if($and)
				$sql.=' ,';
			else
				$and=1;
				
			$sql.=' '.$val.' = :'.$val;
			$assoc[':'.$val]=$m_v[$key];
		}
		
		$sql.=' WHERE';
		
		$and=0;
		foreach($r as $key => $val){
			if($and)
				$sql.=' ,';
			else
				$and=1;
				
			$sql.=' '.$val.' = :old_'.$val;
			$assoc[':old_'.$val]=$v[$key];
		}
		
		$q=$conn->prepare($sql);
		$q->execute($assoc);
		
		return true;
		
		
	}
	
	//get random tupla
	public function random($table){
		$conn = new PDO('mysql:host='.$this->nomehost.';dbname='.$this->nomedb,$this->nomeuser,$this->password);
		
		$indexes=$this->estrai($table);
		$c=count($indexes)-1;
		$which=rand(0,$c);
		return $indexes[$which];
		
		
	}

}

?>