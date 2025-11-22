CREATE DATABASE IF NOT EXISTS quan_ly_xem_phim;
USE quan_ly_xem_phim;


-- PHIM
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
    mo_ta TEXT,
    FOREIGN KEY (quoc_gia_id) REFERENCES quoc_gia(ma_quoc_gia)
);

-- DIỄN VIÊN
 CREATE TABLE phim_dien_vien(
 	id INT,
    phim_id INT,
    dien_vien_id INT,
    ten_dien_vien VARCHAR(50)
 );
 
-- THỂ LOẠI PHIM
 CREATE phim_the_loai(
 	id INT,
    the_loai_id INT,
    phim_id INT
 );

 -- THỂ LOẠI
CREATE TABLE the_loai(
	id INT PRIMARY KEY,
    ten_the_loai VARCHAR(100)

);

-- NGƯỜI DÙNG
CREATE TABLE nguoi_dung(
	idUser INT PRIMARY KEY,
    id INT,
    ten_dang_nhap VARCHAR(50),
    mat_khau VARCHAR(50),
    email VARCHAR(100),
    sdt VARCHAR(10),
    ngay_sinh DATETIME,
    ho_ten VARCHAR(50),
    quyen_id INT,
    FOREIGN Key (quyen_id) REFERENCES quyen(id)
);

--QUYỀN
CREATE TABLE quyen(
	id INT PRIMARY KEY,
    ten_quyen VARCHAR(30)
);

-- TẬP PHIM
CREATE TABLE tap_phim(
	id INT PRIMARY KEY,
    so_tap INT,
    tieu_de VARCHAR(33),
    phim_id INT,
    trailer VARCHAR(33)
);

--QUỐC GIA
CREATE TABLE quoc_gia(
	ma_quoc_gia INT PRIMARY KEY,
    ten_quoc_gia VARCHAR(50),
    id INT
);
--#1.phim
--#2.thể loại
--#3.người dùng
--#4.tập phim
--#5.quốc gia
--#hoàn thiện CSDL BTVN, viết các câu lệnh để chạy nhiều lần ko bị lỗi, mỗi 1 bảng tạo khoảng 30 dữ liệu

INSERT INTO the_loai(ten_the_loai) VALUES
('Anime'),
('Bí ẩn'),
('Chiến tranh'),
('Chiếu rạp'),
('Chuyển thể'),
('Chính kịch'),
('Chính luận'),
('Chính trị'),
('Chương trình truyền hình'),
('Concert Film'),
('Cung đấu'),
('Cách mạng'),
('DC'),
('Disney'),
('Gay cấn'),
('Gia đình'),
('Giả tưởng'),
('Hoạt hình'),
('Hài '),
('Hành động'),
('Kinh dị'),
('Lịch sử'),
('Marvel'),
('Phiêu lưu'),
('Phép thuật'),
('Thiếu nhi'),
('Thần thoại'),
('Thể thao'),
('Tâm lý'),
('Ẩm thực');

INSERT INTO quyen(ten_quyen) VALUES
('Xem phim miễn phí'),
('Xem phim chất lượng cao'),
('Tải phim về máy'),
('Bình luận phim'),
('Đánh giá phim'),
('Thêm phim vào danh sách yêu thích'),
('Chia sẻ phim lên mạng xã hội'),
('Nhận thông báo phim mới'),
('Tạo playlist cá nhân'),
('Xem trailer phim'),
('Đăng ký gói VIP'),
('Cập nhập thông tin cá nhân'),
('Quản lý tài khoản cá nhân'),
('Đổi mật khẩu'),
('Xem lịch sử'),
('Quản lý phương thức thanh toán'),
('Admin - Thêm phim mới'),
('Admin - Xóa phim'),
('Admin - Chỉnh sửa thông tin phim'),
('Admin - Quản lý người dùng'),
('Admin - Khóa tài khoản'),
('Admin - Phân quyền người dùng'),
('Admin - Quản lý bình luận'),
('Admin - Duyệt nội dung phim'),
('Admin - Quản lý gói dịch vụ'),
('Admin - Xem báo cáo doanh thu'),
('Admin - Quản lý quảng cáo'),
('Admin - Quản lý playlist công khai'),
('Admin - Quản lý thông báo hệ thống'),
('Admin - Sao lưu và phục hồi dữ liệu');

INSERT INTO quoc_gia(ten_quoc_gia) VALUES
('Việt Nam'),
('Hàn Quốc'),
('Nhật Bản'),
('Trung Quốc'),
('Mỹ'),
('Anh'),
('Pháp'),
('Đức'),
('Nga'),
('Ấn Độ'),
('Canada'),
('Úc'),
('Tây Ban Nha'),
('Brazil'),
('Ý'),
('Mexico'),
('Thái Lan'),
('Philippines'),
('Indonesia'),
('Malaysia'),
('Singapore'),
('Thổ Nhĩ Kỳ'),
('Ả Rập'),
('UAE'),
('Ai Cập'),
('Argentina'),
('Bồ Đào Nha'),
('Bỉ'),
('Thụy Điển'),
('Hà Lan');

INSERT INTO nguoi_dung(idUser, ten_dang_nhap, mat_khau, email, sdt, ngay_sinh, ho_ten) VALUES
(1001,'user1','111','u1@gmail.com','0800000001','2000-01-01','Nguyen Van A'),
(1002,'user2','111','u2@gmail.com','0800000002','2000-01-02','Nguyen Van B'),
(1003,'user3','111','u3@gmail.com','0800000003','2000-01-03','Nguyen Van C'),
(1004,'user4','111','u4@gmail.com','0800000004','2000-01-04','Nguyen Van D'),
(1005,'user5','111','u5@gmail.com','0800000005','2000-01-05','Nguyen Van E'),
(1006,'user6','111','u6@gmail.com','0800000006','2000-01-06','Nguyen Van F'),
(1007,'user7','111','u7@gmail.com','0800000007','2000-01-07','Nguyen Van G'),
(1008,'user8','111','u8@gmail.com','0800000008','2000-01-08','Nguyen Van H'),
(1009,'user9','111','u9@gmail.com','0800000009','2000-01-09','Nguyen Van I'),
(1010,'user10','111','u10@gmail.com','0800000010','2000-01-10','Nguyen Van J'),
(1011,'user11','111','u11@gmail.com','0800000011','2000-01-11','Nguyen Van K'),
(1012,'user12','111','u12@gmail.com','0800000012','2000-01-12','Nguyen Van L'),
(1013,'user13','111','u13@gmail.com','0800000013','2000-01-13','Nguyen Van M'),
(1014,'user14','111','u14@gmail.com','0800000014','2000-01-14','Nguyen Van N'),
(1015,'user15','111','u15@gmail.com','0800000015','2000-01-15','Nguyen Van O'),
(1016,'user16','111','u16@gmail.com','0800000016','2000-01-16','Nguyen Van P'),
(1017,'user17','111','u17@gmail.com','0800000017','2000-01-17','Nguyen Van Q'),
(1018,'user18','111','u18@gmail.com','0800000018','2000-01-18','Nguyen Van R'),
(1019,'user19','111','u19@gmail.com','0800000019','2000-01-19','Nguyen Van S'),
(1020,'user20','111','u20@gmail.com','0800000020','2000-01-20','Nguyen Van T'),
(1021,'user21','111','u21@gmail.com','0800000021','2000-01-21','Nguyen Van U'),
(1022,'user22','111','u22@gmail.com','0800000022','2000-01-22','Nguyen Van W'),
(1023,'user23','111','u23@gmail.com','0800000023','2000-01-23','Nguyen Van X'),
(1024,'user24','111','u24@gmail.com','0800000024','2000-01-24','Nguyen Van Y'),
(1025,'user25','111','u25@gmail.com','0800000025','2000-01-25','Nguyen Van Z'),
(1026,'user26','111','u26@gmail.com','0800000026','2000-01-26','Nguyen Van AB'),
(1027,'user27','111','u27@gmail.com','0800000027','2000-01-27','Nguyen Van AC'),
(1028,'user28','111','u28@gmail.com','0800000028','2000-01-28','Nguyen Van AD'),
(1029,'user29','111','u29@gmail.com','0800000029','2000-01-29','Nguyen Van AE'),
(1030,'user30','111','u30@gmail.com','0800000030','2000-01-30','Nguyen Van AF');

INSERT INTO dien_vien (phim_id, dien_vien_id, ten_dien_vien) VALUES
(001, 11001, 'diễn viên 1'),
(002, 11002, 'diễn viên 2'),
(003, 11003, 'diễn viên 3'),
(004, 11004, 'diễn viên 4'),
(005, 11005, 'diễn viên 5'),
(006, 11006, 'diễn viên 6'),
(007, 11007, 'diễn viên 7'),
(008, 11008, 'diễn viên 8'),
(009, 11009, 'diễn viên 9'),
(010, 11010, 'diễn viên 10'),
(011, 11011, 'diễn viên 11'),
(012, 11012, 'diễn viên 12'),
(013, 11013, 'diễn viên 13'),
(014, 11014, 'diễn viên 14'),
(015, 11015, 'diễn viên 15'),
(016, 11016, 'diễn viên 16'),
(017, 11017, 'diễn viên 17'),
(018, 11018, 'diễn viên 18'),
(019, 11019, 'diễn viên 19'),
(020, 11020, 'diễn viên 20'),
(021, 11021, 'diễn viên 21'),
(022, 11022, 'diễn viên 22'),
(023, 11023, 'diễn viên 23'),
(024, 11024, 'diễn viên 24'),
(025, 11025, 'diễn viên 25'),
(026, 11026, 'diễn viên 26'),
(027, 11027, 'diễn viên 27'),
(028, 11028, 'diễn viên 28'),
(029, 11029, 'diễn viên 29'),
(030, 11030, 'diễn viên 30');

INSERT INTO phim(ten_phim, dao_dien_id, nam_phat_hanh, thoi_luong, poster, trailer, the_loai_id, quoc_gia_id, so_tap, mo_ta) VALUES
('phim 1', 101001, 2005, 2, 'poster 1', 'trailer 1', 201001, 11001, 1, 'mô tả 1'),
('phim 2', 101002, 2005, 2, 'poster 2', 'trailer 2', 201002, 11002, 1, 'mô tả 2'),
('phim 3', 101003, 2005, 2, 'poster 3', 'trailer 3', 201003, 11003, 1, 'mô tả 3'),
('phim 4', 101004, 2005, 2, 'poster 4', 'trailer 4', 201004, 11004, 1, 'mô tả 4'),
('phim 5', 101005, 2005, 2, 'poster 5', 'trailer 5', 201005, 11005, 1, 'mô tả 5'),
('phim 6', 101006, 2005, 2, 'poster 6', 'trailer 6', 201006, 11006, 1, 'mô tả 6'),
('phim 7', 101007, 2005, 2, 'poster 7', 'trailer 7', 201007, 11007, 1, 'mô tả 7'),
('phim 8', 101008, 2005, 2, 'poster 8', 'trailer 8', 201008, 11008, 1, 'mô tả 8'),
('phim 9', 101009, 2005, 2, 'poster 9', 'trailer 9', 201009, 11009, 1, 'mô tả 9'),
('phim 10', 101010, 2005, 2, 'poster 10', 'trailer 10', 201010, 11010, 1, 'mô tả 10'),
('phim 11', 101011, 2005, 2, 'poster 11', 'trailer 11', 201011, 11011, 1, 'mô tả 11'),
('phim 12', 101012, 2005, 2, 'poster 12', 'trailer 12', 201012, 11012, 1, 'mô tả 12'),
('phim 13', 101013, 2005, 2, 'poster 13', 'trailer 13', 201013, 11013, 1, 'mô tả 13'),
('phim 14', 101014, 2005, 2, 'poster 14', 'trailer 14', 201014, 11014, 1, 'mô tả 14'),
('phim 15', 101015, 2005, 2, 'poster 15', 'trailer 15', 201015, 11015, 1, 'mô tả 15'),
('phim 16', 101016, 2005, 2, 'poster 16', 'trailer 16', 201016, 11016, 1, 'mô tả 16'),
('phim 17', 101017, 2005, 2, 'poster 17', 'trailer 17', 201017, 11017, 1, 'mô tả 17'),
('phim 18', 101018, 2005, 2, 'poster 18', 'trailer 18', 201018, 11018, 1, 'mô tả 18'),
('phim 19', 101019, 2005, 2, 'poster 19', 'trailer 19', 201019, 11019, 1, 'mô tả 19'),
('phim 20', 101020, 2005, 2, 'poster 20', 'trailer 20', 201020, 11020, 1, 'mô tả 20'),
('phim 21', 101021, 2005, 2, 'poster 21', 'trailer 21', 201021, 11021, 1, 'mô tả 21'),
('phim 22', 101022, 2005, 2, 'poster 22', 'trailer 22', 201022, 11022, 1, 'mô tả 22'),
('phim 23', 101023, 2005, 2, 'poster 23', 'trailer 23', 201023, 11023, 1, 'mô tả 23'),
('phim 24', 101024, 2005, 2, 'poster 24', 'trailer 24', 201024, 11024, 1, 'mô tả 24'),
('phim 25', 101025, 2005, 2, 'poster 25', 'trailer 25', 201025, 11025, 1, 'mô tả 25'),
('phim 26', 101026, 2005, 2, 'poster 26', 'trailer 26', 201026, 11026, 1, 'mô tả 26'),
('phim 27', 101027, 2005, 2, 'poster 27', 'trailer 27', 201027, 11027, 1, 'mô tả 27'),
('phim 28', 101028, 2005, 2, 'poster 28', 'trailer 28', 201028, 11028, 1, 'mô tả 28'),
('phim 29', 101029, 2005, 2, 'poster 29', 'trailer 29', 201029, 11029, 1, 'mô tả 29'),
('phim 30', 101030, 2005, 2, 'poster 30', 'trailer 30', 201030, 11030, 1, 'mô tả 30');

INSERT INTO phim_the_loai(the_loai_id, phim_id) VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10),
(11,11),
(12,12),
(13,13),
(14,14),
(15,15),
(16,16),
(17,17),
(18,18),
(19,19),
(20,20),
(21,21),
(22,22),
(23,23),
(24,24),
(25,25),
(26,26),
(27,27),
(28,28),
(29,29),
(30,30);

INSERT INTO tap_phim(so_tap, tieu_de, phim_id, trailer) VALUES
(1,'tập 1', 001, 'trailer 1'),
(2,'tập 2', 002, 'trailer 2'),
(3,'tập 3', 003, 'trailer 3'),
(4,'tập 4', 004, 'trailer 4'),
(5,'tập 5', 005, 'trailer 5'),
(6,'tập 6', 006, 'trailer 6'),
(7,'tập 7', 007, 'trailer 7'),
(8,'tập 8', 008, 'trailer 8'),
(9,'tập 9', 009, 'trailer 9'),
(10,'tập 10', 010, 'trailer 10'),
(11,'tập 11', 011, 'trailer 11'),
(12,'tập 12', 012, 'trailer 12'),
(13,'tập 13', 013, 'trailer 13'),
(14,'tập 14', 014, 'trailer 14'),
(15,'tập 15', 015, 'trailer 15'),
(16,'tập 16', 016, 'trailer 16'),
(17,'tập 17', 017, 'trailer 17'),
(18,'tập 18', 018, 'trailer 18'),
(19,'tập 19', 019, 'trailer 19'),
(20,'tập 20', 020, 'trailer 20'),
(21,'tập 21', 021, 'trailer 21'),
(22,'tập 22', 022, 'trailer 22'),
(23,'tập 23', 023, 'trailer 23'),
(24,'tập 24', 024, 'trailer 24'),
(25,'tập 25', 025, 'trailer 25'),
(26,'tập 26', 026, 'trailer 26'),
(27,'tập 27', 027, 'trailer 27'),
(28,'tập 28', 028, 'trailer 28'),
(29,'tập 29', 029, 'trailer 29'),
(30,'tập 30', 030, 'trailer 30');