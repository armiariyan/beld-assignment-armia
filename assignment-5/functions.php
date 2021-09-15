<?php 

// Membuat koneksi ke database
$mysqli = mysqli_connect("localhost","root","","db_beld");


function show() {
    // Koneksi Database
    global $mysqli;
    // Query mengambil data dengan ID terbesar
    $result = mysqli_fetch_array(mysqli_query($mysqli, "SELECT * FROM portfolio ORDER BY id DESC LIMIT 0, 1")); 
    // Mengembalikan data ke index.php
    return $result;
}

function update($data) {
    // Koneksi Database
    global $mysqli;

    // Memasukkan variable
    $nama = $data['nama'];
    $role = $data['role'];
    $avaliability = $data['avaliability'];
    $age = $data['age'];
    $lokasi = $data['lokasi'];
    $years = $data['experience'];
    $email = $data['email'];

    // Query menambahkan data
    $result = mysqli_query($mysqli, "INSERT INTO portfolio(id, nama, role, avaliability, usia, lokasi, experience, email) VALUES ('', '$nama', '$role', '$avaliability', '$age', '$lokasi', '$years', '$email' )");

    if ($result) {
       header('location: index.php');
    } else {
        echo "Data gagal ditambahkan!";
        die();
    }
}
?>