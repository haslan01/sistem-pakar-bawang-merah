<!DOCTYPE html>
<html>
<link rel="stylesheet" href="assets/icons/font-awesome-4.2.0/font-awesome-4.2.0/css/font-awesome.min.css">
<style type="text/css">
  table.konsul th{
    background-color: #70c745;   
    color: #fff;
  }
  table.konsul {
    border: 2px solid #70c745;
  }
  table.table-bordered.konsul th{
    border: 1px solid #70c745;
  }
  table.table-bordered.konsul td {
    border: 1px solid #70c745;
  }

  table.diagnosa th{
    background-color: #ee3a0a;   
    color: #fff;
  }
  table.diagnosa {
    border: 2px solid #ee3a0a;
  }
  table.table-bordered.diagnosa th{
    border: 1px solid #ee3a0a;
  }
  table.table-bordered.diagnosa td {
    border: 1px solid #e9d5eb;
  }

  /*Riwayat*/
  table.riwayat th{
    background-color: #22a6b3;   
    color: #fff;
  }
  table.riwayat {
    border: 1px solid #22a6b3;
  }
  table.table-bordered.riwayat th{
    border: 1px solid #22a6b3;
  }
  table.table-bordered.riwayat td {
    border: 1px solid #c9d1d9;
    vertical-align: middle;
  }

  span.kondisipilih {
    background-color: #2f2130;
    padding: 2px 4px;
    border-radius: 4px;
  }

  div.paging {
    margin-top: 25px;
  }

  .margin4 {
    margin: 4px;
  }

  img.post{
      
  }

  .well {
    overflow: hidden;
  }

  .well {
    min-height: 20px;
    padding: 19px;
    margin-bottom: 20px;
    background-color: #f5f5f5;
    border: 1px solid #e3e3e3;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 1px rgb(0 0 0 / 5%);
    box-shadow: inset 0 1px 1px rgb(0 0 0 / 5%);
  }

  .img-bordered-sm {
    border: 2px solid #d2d6de;
    padding: 2px;
  }

  .box {
    position: relative;
    border-radius: 3px;
    background: #ffffff;
    border-top: 3px solid #d2d6de;
    margin-bottom: 20px;
    width: 100%;
    box-shadow: 0 1px 1px rgb(0 0 0 / 10%); 
  }

  .box.box-solid.box-info {
    border: 1px solid #00c0ef;
  }

  .box.box-solid.box-warning {
    border: 1px solid #f39c12;
  }

  .box.box-solid.box-secondary {
    border: 1px solid #9b59b6;
  }

  .box.box-solid.box-info>.box-header {
    color: #fff;
    background: #00c0ef;
    background-color: #00c0ef;
  }

  .box.box-solid.box-warning>.box-header {
    color: #fff;
    background: #f39c12;
    background-color: #f39c12;
  }

  .box.box-solid.box-secondary>.box-header {
    color: #fff;
    background: #9b59b6;
    background-color: #9b59b6;
  }

  .box-header.with-border {
    border-bottom: 1px solid #f4f4f4;
  }

  .box-header {
    color: #444;
    display: block;
    padding: 10px;
    position: relative;
  }

  .box-header>.fa, .box-header>.glyphicon, .box-header>.ion, .box-header .box-title {
    display: inline-block;
    font-size: 18px;
    margin: 0;
    line-height: 1;
  }

  .box-body {
    border-top-left-radius: 0;
    border-top-right-radius: 0;
    border-bottom-right-radius: 3px;
    border-bottom-left-radius: 3px;
    padding: 10px;
  }

  .box-body {
    border-top-left-radius: 0;
    border-top-right-radius: 0;
    border-bottom-right-radius: 3px;
    border-bottom-left-radius: 3px;
    padding: 10px;
  }

  .float{
    background: #70c745;
    color: white;
    border-top: 0;
    border-left: 0;
    border-right: 0;
    text-decoration: none;
    font-family: sans-serif;
    font-size: 14pt;
    position:fixed;
    width:60px;
    height:60px;
    bottom:40px;
    right:40px;
    background-color: #70c745;
    color:#FFF;
    border-radius:50px;
    text-align:center;
    margin-top:32px;
  }
</style>
</head>
<body>	
	<!-- membuat menu navigasi -->




	<!-- akhir menu navigasi -->

	<div class='container-fluid'>
        <div class='row page-titles mx-0'>
          <div class='col-sm-6 p-md-0'>
            <div class='welcome-text'>
              <h4>Diagnosa Penyakit</h4>
              <span class='ml-0'>Konsultasi Tentang Penyakit Tanaman Bawang Merah</span>
            </div>
          </div>
        </div>
	      <div class='alert alert-danger alert-dismissible alert-alt fade show'>
          <button type='button' class='close h-100' data-dismiss='alert' aria-label='Close'><span><i class='mdi mdi-close'></i></span>
          </button>
          <strong style='font-size: 20px;'><i class='icon fa fa-exclamation-triangle'></i> Perhatian!</strong> <br>Silahkan memilih gejala sesuai dengan kondisi tanaman Bawang Merah ass='fa fa-search'></i>)  di bawah untuk melihat hasil.
        </div>
<?php include "admin/koneksi.php"; ?>
<?php include "admin/koneksi2.php"; ?>
		<div class='row'>
          <div class='col-12'>
            <div class='card'>
              <div class='card-body'>
                <div class='table-responsive'>
					<table border='1'  class="table table-striped konsu table-bordered">
						<tbody class='pilihkondisi'>
					        <tr>
					            <td ><center><strong>Pilih Gejala!</strong></center></td>
					   		</tr>
					  		<form method="post" >
<?php
//-- menampilkan daftar gejala
//$arrKDGejala=array();
//$arrKDGejalaSelect=array();
$sqli="SELECT * FROM tb_gejala ORDER BY id ASC ";
$result=$db->query($sqli);
while($row=$result->fetch_object()){?>
							<tr>
					    		<td style="padding:3px 3px 7px 3px;">
								
    <?php echo "<input type='checkbox' name='evidence[]' value='{$row->id}'"
         .(isset($_POST['evidence'])?(in_array($row->id,$_POST['evidence'])?" checked":""):"")
        ."> {$row->kdgejala} {$row->gejala}<br>";
}
?>
								</td>
							</tr>

								<input class='btn btn-success float' class="btn btn-primary" type=submit data-toggle='tooltip' data-placement='top' title='Klik disini untuk melihat hasil diagnosa' name=submit value='&#xf002;' style='font-family:Arial, FontAwesome'>
								</form>
							<tr>
								<td><p style="font-weight:bold; text-align:center;"><strong>Menentukan Nilai Densitas (m) Awal</strong></p></td>
							</tr>
							
							<tr>
								<td>
								

<?php
//mengambil nilai gejala yang dipilih
if(isset($_POST['evidence'])){
	if(count($_POST['evidence'])<2){
		echo "Pilih minimal 2 gejala";
	}else{
		echo "<div class='form'><p>Gejala Yang dipilih :</p>"; 
		$arrKDGejalaSelect=$_POST['evidence'];
		foreach($arrKDGejalaSelect as $kdGSelect){ 
			echo $kdGSelect." | ";
			$queryG=mysqli_query($koneksi,"SELECT * FROM tb_gejala WHERE id='$kdGSelect' "); 
			while($dataG=mysqli_fetch_array($queryG)){ echo $dataG['gejala']."<br>";}
			}
		echo "</div>";
		$sql = "SELECT GROUP_CONCAT(b.kdpenyakit), a.cf, a.id_evidence
			FROM tb_rules a
			JOIN tb_penyakit b ON a.id_problem=b.id
			WHERE a.id_evidence IN(".implode(',',$_POST['evidence']).") 
			GROUP BY a.id_evidence ORDER BY a.id_evidence ASC ";
		$result=$db->query($sql);
		$evidence=array();
		//$gejalaSelect=array();
		while($row=$result->fetch_row()){
			//print_r($row[2]);
			$evidence[]=$row;
			//$gejalaSelect[]=$row[0];
			//masukkan kode perhitungannya dibawah ini
		
		} $no=0;
		echo "<br>";
		echo "<div class='form'><p>Densitas (m) Awal<p>";
		echo "<table border='1' width='100%' class='table table-striped table-bordered'> ";
		echo "<tr><td colspan='5'><center>Tabel 1 Densitas (m) Awal</center</td></tr>";
		echo "<tr>";
		echo "<td><strong>No</strong></td>";
		echo "<td><strong>Gejala</strong></td>";
		echo "<td><strong>Penyakit</strong></td>";
		echo "<td><strong>Densitas</strong></td>";
		echo "<td><strong>Plausability</strong></td>";
		echo "</tr>";
		foreach($evidence as $kdgejala){
			echo "<tr>"; $no=$no+1;
			echo "<td>$no</td>";
			echo "<td>"; 
			$queryG=mysqli_query($koneksi,"SELECT * FROM tb_gejala WHERE id='$kdgejala[2]' "); 
			$dataG=mysqli_fetch_array($queryG); 
			echo $dataG['id']." | ".$dataG['gejala']."<br>";
            echo"</td>";
			echo "<td>"; print_r($kdgejala[0]); echo "</td>";
			echo "<td>"; print_r($kdgejala[1]); echo"</td>";
			echo "<td>"; print_r(1-$kdgejala[1]); echo"</td>"; echo "</tr>";
			}unset($kdgejala);
		echo "</table>";
		echo "</div>";
?>
<!--<p style="font-weight:bold; text-align:center; background:#06F;"><strong>Menentukan Nilai Densitas (m) Baru</strong></p>
<?php
		//--- menentukan environement
		$sql="SELECT GROUP_CONCAT(kdpenyakit) FROM tb_penyakit ";
		$result=$db->query($sql);
		$row=$result->fetch_row();
		$fod=$row[0];
		//$densitas_baru=array(); echo "<br>";
echo "<table border='1' width='750'>";
//menghitung nilai densitas (m) baru
while(!empty($evidence)){ 
echo "<tr><td colspan='3'><center>Tabel 2 :Aturan kombinasi untuk m<sub>3</sub></center</td></tr>";
echo "<tr>";
		//nilai pada Y1 baris atas
		echo "<td width='250'>&nbsp;</td>";
		echo "<td width='250'>";
			$densitas1[0]=array_shift($evidence); 
			echo "<span class='Y1'>M<sub>2</sub>"; echo "{"; print_r($densitas1[0][0]); echo "}<br>";
			print_r($densitas1[0][1]); 
			echo "</span>";
		echo "</td>";
		echo "<td width='250'>";
		//nilai pada Y2 baris atas
			$densitas1[1]=array($fod,1-$densitas1[0][1]); 
			echo "<span class='Y2'>M<sub>2</sub>{&theta;}<br>"; $Y2=1-$densitas1[0][1]; echo " $Y2</span>";
			$densitas2=array();
		echo "</td></tr>";
		echo "<tr>";
		echo "<td>";
			if(empty($densitas_baru)){
				//nilai pada X1 baris 1
				//echo "tidak ada densitas baru<br>";
				$densitas2[0]=array_shift($evidence);
				echo "<span class='X1'>M<sub>1</sub>";
				echo "{"; print_r($densitas2[0][0]); echo "}<br>";
				echo ""; print_r($densitas2[0][1]); echo "<br>";
				 echo "</span><br>"; 
			}else{
				foreach($densitas_baru as $k=>$r){
					//nilai pada X1 baris 2; jika ad densitas baru
					if($k!="&theta;"){
						//print_r($densitas2);echo "<br>";
						$densitas2[]=array($k,$r); 
						//echo "<span class='X1'>[nilai X1 baris 2 ";
						echo "<span class='X1'>m<sub>$m</sub>{";
						//print_r($densitas2[0][0]); echo "<br>";
						//print_r($densitas2[0][1]);
						print_r($k); echo"}<br>"; print_r($r);
						echo "</span>";
					}
				}
			}
		echo "</td>"; //bagian y1
		echo "<td valign='top' colspan='2' rowspan='2'>&nbsp;</td>";
		echo "</tr>";
		echo "<tr>";
		echo "<td valign='top'>";
			$theta=1;
			//nilai X1 baris 2 teta
			foreach($densitas2 as $d) $theta-=$d[1]; echo "<span class='X2'>M<sub>1</sub>{&theta;}<br>".$theta."</span>";
			$densitas2[]=array($fod,$theta); 
			//print_r($theta);
			//echo"<p>densitas2[0] = ".print_r($densitas2[0][0])." | densitas2[1] = ".print_r($densitas2[0][1])."</p>";
			$m=count($densitas2); echo "count data M = $m";
		echo "</td>";
		echo "<td colspan='2'>y2&nbsp;</td>"; 
		echo "</tr>";
		echo "<tr>"; 
		echo "<td>x2&nbsp;</td>"; 
		echo "<td colspan='2' valign='top'><div class='kolom2X'>";
			$densitas_baru=array();
			for($y=0;$y<$m;$y++){
				for($x=0;$x<2;$x++){
					if(!($y==$m-1 && $x==1)){
						$v=explode(',',$densitas1[$x][0]);
						$w=explode(',',$densitas2[$y][0]);
						sort($v); 
						sort($w); 
						$vw=array_intersect($v,$w); 
						//mencari nilai irisan	
						if(empty($vw)){
							echo "<span class='densitas'>kosong";
							$k="&theta;"; echo " $k<br>";
							echo $nilaiX1Y1;
							echo "</span>"; 
						}else{
							//echo "<td rowspan='2'>";
							//echo "<br><span class='teta2'>jika data vw ADA maka tampilkan ";
							$k=implode(',',$vw); //echo "{".print_r($k)."}= $nilaiX1Y1"; 
							echo "<span class='densitas'>";
										$nilaiX1Y1=$densitas1[$x][1]*$densitas2[$y][1]; 
										foreach($vw as $vwHasil){ print_r($vwHasil);} echo "<br>"; print_r($nilaiX1Y1);
										echo "</span>";
						}
						if(!isset($densitas_baru[$k])){
							//echo "data Y1r2";
							//echo "<td> y1 r3 ";
							$densitas_baru[$k]=$densitas1[$x][1]*$densitas2[$y][1];
							//echo "<span class='Y1r2'>Y1r2 = "; 
							$k=implode(',',$vw); //echo $k. "<br>"; 
						}else{
							$densitas_baru[$k]+=$densitas1[$x][1]*$densitas2[$y][1];
							//echo "<p>M <sub>3b</sub> : "; print_r($densitas_baru[$k]);echo"|"; print_r($densitas1[$x][1]);
						}
					}
				} 
			}	echo "<span class='densitas'>&theta;<br>"; $dataX2=$theta; $dataY2=$Y2; $Y3=$dataX2*$dataY2; echo $Y3."</span>";
echo "</div></td></tr>";
echo "<tr>";
echo "<td colspan='3'>";
			echo "<p style=' border:none;'>Merujuk pada rumus [DST-07] evidential conflict-nya belum ada, maka nilainya adalah k=0, sehingga dapat dihitung berdasarkan persamaan [DST-06]:</p>";
			echo "<div style='border:1px solid #ccffcc; padding:3px 3px 3px 5px;' >";
			//print_r($densitas_baru);echo"<br>";
			print_r($k); echo "<br>";
			print_r($nilaiX1Y1); echo "<br>";
			print_r($k); echo "<br>"; //print_r($k);echo"<br>";
			foreach($densitas_baru as $k=>$d){
				echo $d."[".$k."]";
				if($k!="&theta;"){
					$densitas_baru[$k]=$d/(1-(isset($densitas_baru["&theta;"])?$densitas_baru["&theta;"]:0));
					//echo "<p>Densitas baru "; print_r($densitas_baru[$k]); echo"=$d /(1-";  echo "</p>";
					//print_r((1-(isset($densitas_baru["&theta;"])?$densitas_baru["&theta;"]:0))); echo "<br>";
					//print_r($densitas_baru["&theta;"]); echo "<br>";
					echo "m<sub>$m</sub>{"; print_r($k); echo "} =$d /(1-(";print_r($d);echo "<br>";
					echo "m<sub>$m</sub>{"; print_r($k); echo "} = ";print_r($densitas_baru[$k]); echo "<br>";
				}
			}
			echo "</div>";
			
			//hasil perhitungan densitas awal m ke n
			echo "<p style='font-weight:bold; border:none;'>Sehingga dari perhitungan #2 didapatkan :</p>";
			
			foreach($densitas_baru as $kdPdensitas=>$nilaiPDensitas){
				echo "m<sub>11</sub>("; print_r($kdPdensitas); echo ") = "; print_r($nilaiPDensitas); echo "<br>";
				}
echo "</td></tr>";
		} //## end --menghitung nilai densitas (m) baru
echo "</table>";
		//--- perangkingan
		unset($densitas_baru["&theta;"]);
		arsort($densitas_baru);
		//print_r ($densitas_baru);
	?>
    <p style="font-weight:bold; text-align:center; background:#06F;"><strong>Hasil Perangkingan</strong></p>-->
<?php	
$arrPenyakit=array(); 
$queryPasien=mysqli_query($koneksi,"SELECT * FROM tbpasien ORDER BY idpasien DESC"); $dataPasien=mysqli_fetch_array($queryPasien);
$queryP=mysqli_query($koneksi,"SELECT * FROM tb_penyakit"); while($dataP=mysqli_fetch_array($queryP)){ $arrPenyakit["$dataP[kdpenyakit]"]=$dataP['nama_penyakit']; }	
		echo "<p style='text-align:center; font-weight:bold; border:none;'>---=== Hasil Diagnosa ===---</p>";
		//print_r($densitas_baru);echo "<hr>"; 
		$dataSama=array();
		$dataSama=array_intersect_key($arrPenyakit,$densitas_baru);
		//print_r($dataSama); echo "<hr>";
		foreach($dataSama as $k=>$a){ 
			foreach($densitas_baru as $kdpenyakit=>$ranking){
			//echo "m<sub>$m</sub>("; print_r($kdpenyakit); echo ") = "; print_r($ranking); echo "<br>";
			//echo "m<sub>$m</sub>( $kdpenyakit | "; print_r($arrPenyakit["$kdpenyakit"]); echo ") = "; 
			//echo " dengan nilai kepercayaan sebesar ".round($densitas_baru[$kdpenyakit]*100,2)."%<br>";
			if($k==$kdpenyakit){ 
			//mengambil solusi penyakit
			$strS=mysqli_query($koneksi,"SELECT * FROM tb_penyakit WHERE kdpenyakit='$k' ");
			$dataS=mysqli_fetch_array($strS); 
				echo "<strong>m<sub>$m</sub>( $kdpenyakit | "; print_r($arrPenyakit["$kdpenyakit"]); echo ") = "; 
				echo " dengan nilai kepercayaan sebesar ".round($densitas_baru[$kdpenyakit]*100,2)."%<br></strong>";
				echo "Solusi Penanganan : <p style='margin: 10px;max-height:300px;overflow:auto; border:3px solid #99ccff;'>".$dataS['solusi']."</p><hr>";
				$persen=round($densitas_baru[$kdpenyakit]*100,2);
				//menyimpan data pasien
				$idPasien=$dataPasien['idpasien'];
				$querySimpanP=mysqli_query($koneksi,"INSERT INTO tb_hasil (idpasien,kdpenyakit,persentase,tanggal) VALUES ('$idPasien','$k','$persen', NOW() ) ");
			 }
			}
		}
        //--- perangkingan
        unset($densitas_baru["&theta;"]);
        arsort($densitas_baru);
        //print_r($densitas_baru);
        
        //--- menampilkan hasil akhir
        $codes=array_keys($densitas_baru); 
        $final_codes=explode(',',$codes[0]);
        $sql="SELECT GROUP_CONCAT(nama_penyakit)  
        FROM tb_penyakit  
        WHERE kdpenyakit IN('".implode("','",$final_codes)."')"; 
        $result=$db->query($sql); 
        $row=$result->fetch_row(); 
        echo "Terdeteksi penyakit <b>{$row[0]}</b> dengan derajat kepercayaan ".round($densitas_baru[$codes[0]]*100,2)."%";
        echo "<p style='text-align:center; font-weight:bold; border:none;'>Persentase Kesimpulan</p>";
        echo "<p style='text-align:justify; border:none;'>0%-50%   : Sedikit Kemungkinan atau Kemungkinan Kecil</p>";
        echo "<p style='text-align:justify; border:none;'>51%-79%  : Pasti</p>";
        echo "<p style='text-align:justify; border:none;'>80%-90%  : Kemungkinan Besar</p>";
        echo "<p style='text-align:justify; border:none;'>91%-100% : Kemungkinan Besar</p>";


    }
  }
?></td>
  </tr>
  <tr  >
    <td>&nbsp;</td>
  </tr>
</table>
			</center>
		</div>

		<!-- akhir jumbotron -->

		<div class="col-sm-6 col-md-3">
	  
		</div>

		<br><br><br>
        <br><br><br>
	</div>
	<br/>
	
	
	<div class="clearfix"></div>
		
	
	
</body>
</html>