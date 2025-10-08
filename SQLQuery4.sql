CREATE TABLE Lop (
MaLop NVARCHAR(10) PRIMARY KEY,
TenLop NVARCHAR(50) NOT NULL);
INSERT INTO Lop (MaLop, TenLop)
VALUES
('TH29.24', N'Lớp tin chuyên ngành'),
('TH29.22', N'Lớp tin nghiệp dư');

CREATE TABLE DsachSv(
    Msv NVARCHAR(10) PRIMARY KEY,
    TenSV NVARCHAR(50) NOT NULL,
    SoDT NVARCHAR(15),
    DiaChi NVARCHAR(100),
    MaLop NVARCHAR(10) REFERENCES Lop(MaLop)
);

INSERT INTO DsachSv(Msv, TenSV, SoDT, DiaChi, MaLop) VALUES
('TH001', N'Nguyễn Thạc Quyền', '0901234567', N'Hà Nội', 'TH29.24'),
('TH002', N'Trần Thị Nguyệt', '0912345678', N'Hải Phòng', 'TH29.24'),
('TH003', N'Bùi Công Phú', '0912345999', N'Long Biên', 'TH29.24'),
('TH004', N'Đỗ Thanh Tâm', '0912348386', N'Hà Đông', 'TH29.24'),
('TH005', N'Đào Huy Thái', '0912349876', N'Hải Dương', 'TH29.22'),
('TH006', N'Lê Văn Hải', '0987654321', N'Đà Nẵng', 'TH29.22'),
('TH007', N'Huyền Thị Lê', '0912699678', N'Thanh Hóa', 'TH29.22'),
('TH008', N'Đặng Công Quang', '0919995678', N'Nam Định', 'TH29.22');