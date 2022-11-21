<?php
require "config/database.php";
require "config/function.php";
require "config/functions.crud.php";
session_start();

if ($pg == 'simpan') {
    include_once 'securimage/securimage.php';
    $securimage = new Securimage();
    if ($securimage->check($_POST['kodepengaman']) == true) {
        $pesan = [
            'pesan' => 'KODE CAPTCHA SALAH'
        ];
        echo json_encode($pesan);
    } else {

        $query = "SELECT max(no_daftar) as maxKode FROM daftar";
        $hasil = mysqli_query($koneksi, $query);
        $data  = mysqli_fetch_array($hasil);
        $kodedaftar = $data['maxKode'];
        $noUrut = (int) substr($kodedaftar, 8, 3);
        $noUrut++;
        $char = "PPDB" . date('Y');
        $newID = $char . sprintf("%03s", $noUrut);
        $nama = mysqli_escape_string($koneksi, ucwords(strtolower($_POST['nama'])));
        $data = [
            'no_daftar' => $newID,
            'jenis' => $_POST['jenis'],
            'jurusan' => $_POST['jurusan'],
            'nisn' => $_POST['nisn'],
            'nama' => $nama,
            'no_hp' => $_POST['nohp'],
            'tempat_lahir' => ucwords($_POST['tempat']),
            'tgl_lahir' => $_POST['tgllahir'],
            'password' => $_POST['password'],
            'tgl_daftar' => $_POST['tgl_daftar'],
            'foto' => 'default.png'
        ];
        $jurusan = $_POST['jurusan'];
        $jenis = $_POST['jenis'];
        $nisn = $_POST['nisn'];
        $no_hp = $_POST['no_hp'];
        $tempat = ucwords($_POST['tempat']);
        $tgllahir = $_POST['tgllahir'];
        $password = $_POST['password'];
        $foto = 'default.png';
        $cek = rowcount($koneksi, 'daftar', ['nisn' => $_POST['nisn']]);
        if ($cek == 0) {
            $sql = "INSERT INTO daftar (no_daftar,jurusan,jenis,nisn,nama,no_hp,tempat_lahir,tgl_lahir,password,foto) 
            VALUES ('$newID','$jurusan','$jenis','$nisn','$nama','$no_hp','$tempat','$tgllahir','$password','$foto')";
            $result = mysqli_query($koneksi, $sql);
            // $exec = insert($koneksi, 'daftar', $data);
            $namapendek = explode(" ", $nama);
            $pesan = [
                'pesan' => 'ok',
                'id' => $newID,
                'nisn' => $_POST['nisn'],
                'pass' => $_POST['password'],
                'nama' => $namapendek[0]
            ];
            echo json_encode($pesan);
        } else {
            $pesan = [
                'pesan' => 'Nisn sudah terdaftar'
            ];
            echo json_encode($pesan);
        }
    }
}
if ($pg == 'simpan2') {
    include_once 'securimage/securimage.php';
    $securimage = new Securimage();
    if ($securimage->check($_POST['kodepengaman']) == true) {
        $pesan = [
            'pesan' => 'KODE CAPTCHA SALAH'
        ];
        echo json_encode($pesan);
    } else {

        $query = "SELECT max(no_daftar) as maxKode FROM daftar";
        $hasil = mysqli_query($koneksi, $query);
        $data  = mysqli_fetch_array($hasil);
        $kodedaftar = $data['maxKode'];
        $noUrut = (int) substr($kodedaftar, 8, 3);
        $noUrut++;
        $char = "PPDB" . date('Y');
        $newID = $char . sprintf("%03s", $noUrut);
        $nama = mysqli_escape_string($koneksi, ucwords(strtolower($_POST['nama'])));
        $data = [
            'no_daftar' => $newID,
            'jurusan' => $_POST['jurusan'],
            'jenis' => $_POST['jenis'],
            'nisn' => $_POST['nisn'],
            'nama' => $nama,
            'no_hp' => $_POST['nohp'],
            'tempat_lahir' => ucwords($_POST['tempat']),
            'tgl_lahir' => $_POST['tgllahir'],
            'password' => $_POST['password'],
            'foto' => 'default.png'
        ];
        $jurusan = $_POST['jurusan'];
        $jenis = $_POST['jenis'];
        $nisn = $_POST['nisn'];
        $no_hp = $_POST['nohp'];
        $tempat = ucwords($_POST['tempat']);
        $tgllahir = $_POST['tgllahir'];
        $password = $_POST['password'];
        $foto = 'default.png';
        $cek = rowcount($koneksi, 'daftar', ['nisn' => $_POST['nisn']]);
        if ($cek == 0) {
            // $sql = "INSERT INTO daftar (no_daftar, jurusan, jenis, nisn, nama, no_hp, tempat_lahir, tgl_lahir, password, foto) VALUES ('$newID','$jurusan','$jenis','$nisn','$nama','$no_hp','$tempat','$tgllahir','$password','$foto')";
            // $sql = "INSERT INTO daftar (id_daftar, no_daftar, jenis, nis, nik, no_kk, nisn, nama, warga_siswa, foto, jenkel, tempat_lahir, tgl_lahir, asal_sekolah, npsn_asal, kelas, jurusan, jenjang, agama, status_tinggal, alamat, rt, rw, desa, kecamatan, kota, provinsi, kode_pos, koordinat, transportasi, no_hp, email, anak_ke, saudara, biaya_sekolah, paud, tk, hepatitis, polio, bcg, campak, dpt, covid, citacita, hobi, status_keluarga, tinggal, jarak, waktu, nik_ayah, nama_ayah, tempat_lahir_ayah, tahun_ayah, status_ayah, pendidikan_ayah, pekerjaan_ayah, penghasilan_ayah, no_hp_ayah, nik_ibu, nama_ibu, tempat_lahir_ibu, tahun_ibu, status_ibu, pendidikan_ibu, pekerjaan_ibu, penghasilan_ibu, no_hp_ibu, nik_wali, nama_wali, tempat_lahir_wali, tahun_wali, pendidikan_wali, pekerjaan_wali, penghasilan_wali, no_hp_wali, no_ijazah, no_shun, no_ujian, no_kip, kip, kk, kepala_keluarga, ijazah, akta, file_shun, tgl_keluar, alasan_keluar, surat_keluar, level, aktif, status, sekolah_tujuan, npsn_sekolah_tujuan, tgl_daftar, tgl_konfirmasi, konfirmasi, bayar, online, password, bin1, mat1, ipa1, big1, bin2, mat2, ipa2, big2, bin3, mat3, ipa3, big3, bin4, mat4, ipa4, big4, bin5, mat5, ipa5, big5, jumlah) VALUES (NULL, 'PPDB2022005', 'SB', '', NULL, NULL, '12345', 'Fatmawati', NULL, 'default.png', NULL, 'Purworejo', '2022-07-19', NULL, NULL, NULL, 'BOARDING SCHOOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '085643', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', '12345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)";
            $sql = "INSERT INTO daftar (id_daftar, no_daftar, jenis, nis, nik, no_kk, nisn, nama, warga_siswa, foto, jenkel, tempat_lahir, tgl_lahir, asal_sekolah, npsn_asal, kelas, jurusan, jenjang, agama, status_tinggal, alamat, rt, rw, desa, kecamatan, kota, provinsi, kode_pos, koordinat, transportasi, no_hp, email, anak_ke, saudara, biaya_sekolah, paud, tk, hepatitis, polio, bcg, campak, dpt, covid, citacita, hobi, status_keluarga, tinggal, jarak, waktu, nik_ayah, nama_ayah, tempat_lahir_ayah, tahun_ayah, status_ayah, pendidikan_ayah, pekerjaan_ayah, penghasilan_ayah, no_hp_ayah, nik_ibu, nama_ibu, tempat_lahir_ibu, tahun_ibu, status_ibu, pendidikan_ibu, pekerjaan_ibu, penghasilan_ibu, no_hp_ibu, nik_wali, nama_wali, tempat_lahir_wali, tahun_wali, pendidikan_wali, pekerjaan_wali, penghasilan_wali, no_hp_wali, no_ijazah, no_shun, no_ujian, no_kip, kip, kk, kepala_keluarga, ijazah, akta, file_shun, tgl_keluar, alasan_keluar, surat_keluar, level, aktif, status, sekolah_tujuan, npsn_sekolah_tujuan, tgl_daftar, tgl_konfirmasi, konfirmasi, bayar, online, password, bin1, mat1, ipa1, big1, bin2, mat2, ipa2, big2, bin3, mat3, ipa3, big3, bin4, mat4, ipa4, big4, bin5, mat5, ipa5, big5, jumlah) VALUES (NULL, '$newID', '$jenis', '', NULL, NULL, '$nisn', '$nama', NULL, '$foto', NULL, '$tempat', '$tgllahir', NULL, NULL, NULL, '$jurusan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$no_hp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', '$password', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)";
            // $result = mysqli_query($koneksi, $sql);
            // $exec = insert($koneksi, 'daftar', $data);
            if (mysqli_query($koneksi, $sql)) {
                $namapendek = explode(" ", $nama);
                $pesan = [
                    'pesan' => 'ok',
                    'id' => $newID,
                    'nisn' => $_POST['nisn'],
                    'pass' => $_POST['password'],
                    'nama' => $namapendek[0]
                ];
                echo json_encode($pesan);
            }
        } else {
            $pesan = [
                'pesan' => 'Nisn sudah terdaftar'
            ];
            echo json_encode($pesan);
        }
    }
}
if ($pg == 'login') {
    $username = mysqli_escape_string($koneksi, $_POST['username']);
    $password = mysqli_escape_string($koneksi, $_POST['password']);
    $siswaQ = mysqli_query($koneksi, "SELECT * FROM daftar WHERE nisn='$username'");
    if ($username <> "" and $password <> "") {
        if (mysqli_num_rows($siswaQ) == 0) {
            $data = [
                'pesan' => 'Anda belum terdaftar silahkan Hubungi Operator Sekolah!'
            ];
            echo json_encode($data);
        } else {
            $siswa = mysqli_fetch_array($siswaQ);
            //$ceklogin=mysqli_num_rows(mysqli_query($koneksi, "select * from login where id_siswa='$siswa[id_siswa]'"));

            if ($password <> $siswa['password']) {
                $data = [
                    'pesan' => 'Password Salah !'
                ];
                echo json_encode($data);
            } else {
                //if($ceklogin==0){
                $_SESSION['id_daftar'] = $siswa['id_daftar'];
                mysqli_query($koneksi, "UPDATE daftar set online='1' where id_daftar");
                $data = [
                    'pesan' => 'ok'
                ];
                echo json_encode($data);
            }
        }
    }
}
if ($pg == 'login2') {

    $username = mysqli_escape_string($koneksi, $_POST['username']);
    $password = mysqli_escape_string($koneksi, $_POST['password']);
    $siswaQ = mysqli_query($koneksi, "SELECT * FROM siswa WHERE no_siswa='$username'");
    if ($username <> "" and $password <> "") {
        if (mysqli_num_rows($siswaQ) == 0) {
            $data = [
                'pesan' => 'Anda belum terdaftar silahkan Hubungi Operator Sekolah!'
            ];
            echo json_encode($data);
        } else {
            $siswa = mysqli_fetch_array($siswaQ);
            //$ceklogin=mysqli_num_rows(mysqli_query($koneksi, "select * from login where id_siswa='$siswa[id_siswa]'"));

            if ($password <> $siswa['password']) {
                $data = [
                    'pesan' => 'Password Salah !'
                ];
                echo json_encode($data);
            } else {
                //if($ceklogin==0){
                $_SESSION['id_siswa'] = $siswa['id_siswa'];
                mysqli_query($koneksi, "UPDATE siswa set online='1' where id_siswa='$siswa[id_siswa]'");
                $data = [
                    'pesan' => 'ok'
                ];
                echo json_encode($data);
            }
        }
    }
}
