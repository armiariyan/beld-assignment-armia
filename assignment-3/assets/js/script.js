function func1() {

    // Tadinya untuk membuat value default menjadi dinamis, namun bermasalah dengan tag td pada table di index
    // InnerHTML nya membuat jarak, jadi diputuskan untuk default value dilakukan secara manual dan fungsi ini tidak digunakan

    const nama = document.querySelector("#nama").innerHTML;
    const role = document.querySelector("#role").innerHTML;
    const avaliability = document.querySelector("#avaliability").innerHTML;
    const usia = document.querySelector("#usia").innerHTML;
    const lokasi = document.querySelector("#lokasi").innerHTML;
    const pengalaman = document.querySelector("#pengalaman").innerHTML;
    const email = document.querySelector("#email").innerHTML;

    document.querySelector("#inputNama").value = nama;
    document.querySelector("#inputRole").value = role;
    document.querySelector("#inputAvaliability").value = avaliability;
    document.querySelector("#inputUsia").value = usia;
    document.querySelector("#inputLokasi").value = lokasi;
    document.querySelector("#inputPengalaman").value = pengalaman;
    document.querySelector("#inputEmail").value = email;
}


function func2() {

    const nama = document.querySelector("#inputNama").value;
    const role = document.querySelector("#inputRole").value;
    const avaliability = document.querySelector("#inputAvaliability").value;
    const usia = document.querySelector("#inputUsia").value;
    const lokasi = document.querySelector("#inputLokasi").value;
    const pengalaman = document.querySelector("#inputPengalaman").value;
    const email = document.querySelector("#inputEmail").value;

    document.querySelector("#nama").innerHTML = nama;
    document.querySelector("#role").innerHTML = role;
    document.querySelector("#avaliability").innerHTML = avaliability;
    document.querySelector("#usia").innerHTML = usia;
    document.querySelector("#lokasi").innerHTML = lokasi;
    document.querySelector("#pengalaman").innerHTML = pengalaman;
    document.querySelector("#email").innerHTML = email;



    // Mematikan sifat auto refresh form saat disubmit
    event.preventDefault();
}