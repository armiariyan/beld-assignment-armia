<?php 
    include "functions.php";

    // Menampilkan Data
    $result = show();
    
    // Update Data
    if (isset($_POST['submit'])) {
        $data = $_POST;
        update($data);
    }
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Portofolioku</title>
    <link rel="stylesheet" href="assets/css/style.css">

</head>

<body>
    <!-- Navbar -->
    <nav>
        <ul>
            <li><a href="#">HOME</a></li>
            <li><a href="#">PRODUCT</a></li>
            <li><a href="#">GALERRY</a></li>
            <li><a href="blog.html">BLOG</a></li>
            <li><a href="#">MY INVENTORY</a></li>
        </ul>
    </nav>

    <!-- Header -->
    <div class="card">
        <div class="container">
            <img src="assets/img/logo.jpeg" alt="" width="175px" class="rounded">

            <div class="container-inside">
                <h1 id="nama"><?= $result['nama']?></h1>
                <p id="role"><?= $result['role']?></p> 
                <br>
                <button id="btnKontak">Kontak</button>
                <button id="btnResume">Resume</button>
            </div>

            <div id="garisVertikal"></div>

            <table>
                <tr>
                    <td>
                        <b>Avaliability</b>
                    </td>
                    <td id="avaliability">
                    <?= $result['avaliability']?>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Usia</b>
                    </td>
                    <td id="usia">
                    <?= $result['usia']?>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Lokasi</b>
                    </td>
                    <td id="lokasi">
                    <?= $result['lokasi']?>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Pengalaman</b>
                    </td>
                    <td id="experience">
                    <?= $result['experience']?>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Email</b>
                    </td>
                    <td id="email">
                    <?= $result['email']?>
                    </td>
                        
                </tr>
            </table>
        </div>

    </div>

    <!-- Form -->
    <div class="card">
        <form action="" method="POST">
            <!-- Nama -->
            <div class="form-group">
                <label for="nama"><b>Nama</b></label>
                <br>
                <input type="text" class="form-input" id="inputNama"  name="nama">
            </div>
            <!-- Role -->
            <div class="form-group">
                <label for="role"><b>Role</b></label>
                <br>
                <input type="text" class="form-input" id="inputRole"  name="role">
            </div>
            <!-- Avaliability -->
            <div class="form-group">
                <label for="avaliability"><b>Avaliability</b></label>
                <br>
                <input type="text" class="form-input" id="inputAvaliability"  name="avaliability">
            </div>
            <!-- Age -->
            <div class="form-group">
                <label for="age"><b>Age</b></label>
                <br>
                <input type="text" class="form-input" id="inputUsia"  name="age">
            </div>
            <!-- Lokasi -->
            <div class="form-group">
                <label for="lokasi"><b>Lokasi</b></label>
                <br>
                <input type="text" class="form-input" id="inputLokasi"  name="lokasi">
            </div>
            <!-- Years Experience -->
            <div class="form-group">
                <label for="years-experience"><b>Years Experience</b></label>
                <br>
                <input type="text" class="form-input" id="inputPengalaman" name="experience" >
            </div>
            <!-- Email -->
            <div class="form-group">
                <label for="email"><b>Email</b></label>
                <br>
                <input type="email" class="form-input" id="inputEmail"  name="email">
            </div>

            <div class="text-center">
                <button class="btn-submit" type="submit" name="submit">SUBMIT</button>
            </div>
        </form>
    </div>
</body>
</html>