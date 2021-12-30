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
  <title>Document</title>
  <style>
    .form_id{
      display: none;
    }
  </style>
</head>
<body>
<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Nama</th>
      <th scope="col">Telp</th>
      <th scope="col">Email</th>
      <th scope="col">PHP</th>
      <th scope="col">Python</th>
      <th scope="col">Golang</th>
      <th scope="col">Js</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
    <?php 
    $query = "SELECT * FROM user WHERE step = 2";
    $result = mysqli_query($conn,$query);

    while($data = mysqli_fetch_array($result)){

    ?>
    <tr>
      <th scope="row">1</th>
      <td><?=$data["nama"]?></td>
      <td><?=$data["telp"]?></td>
      <td><?=$data["email"]?></td>
      <form action="hitung_technical.php" method="post">
      <td class="form_id"><input type="number" name="user_id" value="<?=$data["id"]?>"></td>
      <td><input type="number" name="php"</td>
      <td><input type="number" name="python"></td>
      <td><input type="number" name="golang"></td>
      <td><input type="number" name="js"></td>
      <td>
        <input type="submit" name="submit" value="submit">
        <a href="hapus.php?id=<?=$data['id']?>&back=http://localhost/uas/technical.php" class="btn btn-danger">Tolak</a>
      </td>
      </form>
    </tr>
    <?php }?>
  </tbody>
</table>


<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>