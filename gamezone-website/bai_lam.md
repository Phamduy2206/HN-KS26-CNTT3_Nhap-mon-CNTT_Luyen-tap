# BÀI LÀM – THI THỬ HACKATHON 02 (GAMEZONE)

- **Họ tên:** PHẠM NGỌC DUY
- **Lớp:** HN-KS26-CNTT3
- **Link repository:** https://github.com/Phamduy2206/HN-KS26-CNTT3_Nhap-mon-CNTT_Luyen-tap.git
- **Hệ điều hành (Windows/macOS):** Windows

## 4.2. Thao tác CLI

### Các lệnh đã chạy

```shell
PS C:\de-on-tap-game\starter-kit\gamezone-website> pwd
PS C:\de-on-tap-game\starter-kit\gamezone-website> Get-ChildItem -Force -Recurse
PS C:\de-on-tap-game\starter-kit\gamezone-website> mv .\cap_nhat.txt ".\docs"
PS C:\de-on-tap-game\starter-kit\gamezone-website> mv .\logo_game_zone.png ".\media"
PS C:\de-on-tap-game\starter-kit\gamezone-website> cp .\media\logo_game_zone.png ".\backup"
PS C:\de-on-tap-game\starter-kit\gamezone-website> rm .\temp_207.tmp
PS C:\de-on-tap-game\starter-kit\gamezone-website> cd logs
PS C:\de-on-tap-game\starter-kit\gamezone-website\logs> Get-Content .\game.log
PS C:\de-on-tap-game\starter-kit\gamezone-website\logs> cd..
PS C:\de-on-tap-game\starter-kit\gamezone-website> Get-ChildItem -Force -Recurse
```

### Kết quả liệt kê toàn bộ dự án

```text
 Directory: C:\de-on-tap-game\starter-kit\gamezone-website


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        10/26/2026   1:28 PM                backup
d-----        10/26/2026   1:20 PM                data
d-----        10/26/2026   1:27 PM                docs
d-----        10/26/2026   1:20 PM                logs
d-----        10/26/2026   1:27 PM                media
-a----        10/26/2026   1:15 PM             70 .env
-a----        10/26/2026   1:15 PM           1437 bai_lam.md


    Directory: C:\de-on-tap-game\starter-kit\gamezone-website\backup


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/26/2026   1:15 PM           8542 logo_game_zone.png


    Directory: C:\de-on-tap-game\starter-kit\gamezone-website\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/26/2026   1:15 PM           5814 giao_dich_thang_11.xlsx


    Directory: C:\de-on-tap-game\starter-kit\gamezone-website\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/26/2026   1:15 PM             61 cap_nhat.txt


    Directory: C:\de-on-tap-game\starter-kit\gamezone-website\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/26/2026   1:15 PM            986 game.log


    Directory: C:\de-on-tap-game\starter-kit\gamezone-website\media


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/26/2026   1:15 PM           8542 logo_game_zone.png

```

## 4.3. Lọc log thủ công

### Lệnh đã chạy

```shell
PS C:\de-on-tap-game\starter-kit\gamezone-website> Get-Content .\logs\game.log | Select-String "ERROR" > .\logs\daily_report.txt
PS C:\de-on-tap-game\starter-kit\gamezone-website> Get-Content .\logs\daily_report.txt
```

### 2 dòng lỗi đầu tiên trong daily_report.txt

```text
2025-11-05 08:03:15 [ERROR] Mat ket noi may chu game
2025-11-05 08:09:15 [ERROR] Mat ket noi may chu game

```

## 4.4. README.md

> Chấm trực tiếp trên `README.md` ở gốc dự án.

- [x] Heading 1
- [x] Mô tả in đậm + in nghiêng
- [x] Bảng `Thư mục | Nội dung` (≥3 dòng)
- [x] Code block lệnh liệt kê
- [x] Task list (≥2 việc, ≥1 đã xong)
- [x] Blockquote nhắc không upload `.env`

## 4.5. Chạy script auto_report

### Lệnh chạy

```shell
PS C:\de-on-tap-game\starter-kit\gamezone-website> .\auto_report.ps1

```

### Nội dung file logs/auto_report.txt

```text
=== BAO CAO LOI GAMEZONE ===

2025-11-05 08:03:15 [ERROR] Mat ket noi may chu game
2025-11-05 08:09:15 [ERROR] Mat ket noi may chu game
2025-11-05 08:12:15 [ERROR] Mat ket noi may chu game
2025-11-05 08:39:15 [ERROR] Mat ket noi may chu game
2025-11-05 08:42:15 [ERROR] Mat ket noi may chu game
2025-11-05 08:51:15 [ERROR] Loi luu tien trinh choi

```

## 4.6. Đếm số dòng lỗi

### Lệnh

```shell
PS C:\de-on-tap-game\starter-kit\gamezone-website> (Get-Content .\logs\game.log | Select-String "ERROR").Count
```

### Kết quả đếm

```text
6
```

## 4.7. Báo cáo tổng hợp

### Các lệnh đã chạy

```shell
PS C:\de-on-tap-game\starter-kit\gamezone-website> "=== TONG HOP LOG GAMEZONE ===" > .\logs\tong_hop.txt
PS C:\de-on-tap-game\starter-kit\gamezone-website> Get-Content .\logs\game.log | Select-String "WARNING" >> .\logs\tong_hop.txt
PS C:\de-on-tap-game\starter-kit\gamezone-website> (Get-Content .\logs\game.log | Select-String "ERROR").Count   >> .\logs\tong_hop.txt

```

### Nội dung file logs/tong_hop.txt

```text
=== TONG HOP LOG GAMEZONE ===

2025-11-05 08:54:15 [WARNING] May chu qua tai CPU 90%


6

```

## 4.8. Excel

> Chấm trực tiếp trên file `data/giao_dich_thang_11.xlsx`.
