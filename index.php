<?php
session_start();
include "koneksi.php"
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <link rel="stylesheet" href="style.css">
  <title>Document</title>
  <style>
    .form_id{
      display: none;
    }
  </style>
</head>
<body>
    <div class="wrapper">
    <form method="post" enctype="multipart/form-data"> 
      <center><h1>Daftar</h1></center>
      <p>submit cv mu sekarang juga</p>
      <label for="">nama</label><br>
      <input type="text" name="nama" placeholder="nama" class="form-control">
      <label for="">nomer hp</label><br>
      <input type="number" name="telp" placeholder="nomer hp" class="form-control">
      <label for="">Email</label><br>
      <input type="email" name="email" placeholder="email" class="form-control">
      <label for="">CV</label><br>
      <input type="file" name="cv" placeholder="Curiculum Vitae" class="form-control"><br>
      <input type="submit" name="submit" value="daftar" class="btn btn-primary">
    </form>
    <?php
    if(isset($_POST['submit'])){
      $nama = $_POST['nama'];
      $telp = $_POST['telp'];
      $email = $_POST['email'];
      $cv = $_FILES['cv'];
      if(!empty($nama)&&!empty($telp)&&!empty($email)&&!empty($cv)){
          $temp = $cv["tmp_name"];
          $rand = random_int(0,10000);
          $name = $rand.$cv["name"];
          $cek = move_uploaded_file($temp,"file/".$name);
          if($cek){
            $query = "INSERT INTO user SET nama='$nama', telp=$telp, email='$email', cv='$name', step=1";
            $result = mysqli_query($conn,$query);
            if($result){
              echo "lamaran anda berhasil dikirim, tim kami akan segera menghubungi anda";
            }else{
              echo "gagal memasukan data ke dalam database";
            }
          }else{
            echo "gagal mengupload file";          }
      }else{
        echo "form harus legkap";
      }
    }
    ?>
    </div>


<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>