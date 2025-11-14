CREATE DATABASE IF NOT EXISTS quan_ly_xem_phim;
USE quan_ly_xem_phim;

CREATE TABLE phim(
	id INT PRIMARY KEY,
    ten_phim VARCHAR(50),
    dao_dien_id INT,
    nam_phat_hanh INT,
    thoi_luong INT,
    poster VARCHAR,
    trailer VARCHAR,
    the_loai_id INT,
    quoc_gia_id INT,
    so_tap INT,
    mo_ta TEXT
);
 CREATE TABLE phim_dien_vien(
 	id INT,
     phim_id INT,
     dien_vien_id INT
 );
 
 CREATE phim_the_loai(
 	id INT,
     the_loai_id INT,
     phim_id INT
 );
CREATE TABLE the_loai(
	id INT PRIMARY KEY,
    ten_the_loai VARCHAR(100)

);

CREATE TABLE nguoi_dung(
	idUser INT PRIMARY KEY,
    id INT,
    ten_dang_nhap VARCHAR(50),
    mat_khau VARCHAR(50),
    email VARCHAR(100),
    sdt VARCHAR(10),
    ngay_sinh DATETIME,
    ho_ten VARCHAR(50),
    quyen_id INT
);

CREATE TABLE quyen(
	id INT,
    ten_quyen VARCHAR(30)
);

CREATE TABLE tap_phim(
	id INT PRIMARY KEY,
    so_tap INT,
    tieu_de VARCHAR(33),
    phim_id INT,
    trailer VARCHAR(33)
);

CREATE TABLE quoc_gia(
	ma_quoc_gia INT PRIMARY KEY,
    ten_quoc_gia VARCHAR(50),
    id INT
);
#1.phim
#2.thể loại
#3.người dùng
#4.tập phim
#5.quốc gia
#hoàn thiện CSDL BTVN, viết các câu lệnh để chạy nhiều lần ko bị lỗi, mỗi 1 bảng tạo khoảng 30 dữ liệu