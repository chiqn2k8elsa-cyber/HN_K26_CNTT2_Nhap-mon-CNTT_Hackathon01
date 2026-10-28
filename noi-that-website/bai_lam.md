# BÀI LÀM – HACKATHON 01

- **Mã đề:** 18
- **Họ tên: Nguyễn Quỳnh Chi** 
- **Lớp: CNTT2** 
- **Link repository:https://github.com/chiqn2k8elsa-cyber/HN_K26_CNTT2_Nhap-mon-CNTT_Hackathon01** 
- **Hệ điều hành (Windows/macOS): Windows** 

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
#### pwd
#### ls -Force
#### mv kich_thuoc.txt docs
#### mv logo_noi_that.png media
#### cp media\logo_noi_that.png backup
#### rm temp_267.tmp
#### cd logs
#### ls -Force
#### cd ..

```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text
Directory: C:\Users\admin\Downloads\starter-kit (1)\starter-kit\noi-that-website


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        10/28/2026   1:42 PM                backup
d-----        10/28/2026   1:36 PM                data
d-----        10/28/2026   1:39 PM                docs
d-----        10/28/2026   1:36 PM                logs
d-----        10/28/2026   1:41 PM                media
------        10/27/2026   1:32 AM             68 .env
-a----        10/27/2026   1:32 AM           2226 bai_lam.md


    Directory: C:\Users\admin\Downloads\starter-kit (1)\starter-kit\noi-that-website\backup


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           4403 logo_noi_that.png


    Directory: C:\Users\admin\Downloads\starter-kit (1)\starter-kit\noi-that-website\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           6121 don_noi_that_quy_1.xlsx


    Directory: C:\Users\admin\Downloads\starter-kit (1)\starter-kit\noi-that-website\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM             53 kich_thuoc.txt


    Directory: C:\Users\admin\Downloads\starter-kit (1)\starter-kit\noi-that-website\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           1028 furniture.log


    Directory: C:\Users\admin\Downloads\starter-kit (1)\starter-kit\noi-that-website\media


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           4403 logo_noi_that.png

```

## 4.3. Lọc log thủ công

### Lệnh đã chạy

```shell
#### get-content logs/furniture.log | select-string "ERROR" > logs/daily_report.txt
#### get-content logs/daily_report.txt

```

### 2 dòng lỗi đầu tiên trong daily_report.txt

```text
2026-01-28 07:35:33 [ERROR] Dat coc bi tu choi
2026-01-28 07:47:33 [ERROR] Dat coc bi tu choi

```

## 4.4. Thao tác với tài liệu Markdown (README.md)

> README.md được chấm trực tiếp trên file `README.md` ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [x] Heading 1: tên dự án
- [x] Mô tả ngắn có cả **in đậm** và *in nghiêng*
- [x] Bảng `Thư mục | Nội dung`, ít nhất 3 dòng dữ liệu
- [x] Code block chứa lệnh PowerShell/Terminal liệt kê nội dung dự án
- [x] Task list ít nhất 2 công việc, có ít nhất 1 mục đã hoàn thành
- [x] Blockquote nhắc không upload `.env`

## 4.5. Chạy script auto_report (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
#### ./auto_report.ps1

```

### Kết quả hiển thị

```text
===BAO CAO LOI===

2026-01-28 07:35:33 [ERROR] Dat coc bi tu choi
2026-01-28 07:47:33 [ERROR] Dat coc bi tu choi
2026-01-28 07:55:33 [ERROR] Khong tim thay trang /mau-moi (404)
2026-01-28 07:59:33 [ERROR] Dat coc bi tu choi
2026-01-28 08:07:33 [ERROR] Khong tim thay trang /mau-moi (404)
2026-01-28 08:19:33 [ERROR] Khong tim thay trang /mau-moi (404)
2026-01-28 08:23:33 [ERROR] Ket noi kho hang that bai

```

## 4.6. Đếm số dòng lỗi

### Lệnh

```shell
####  get-content logs/furniture.log | select-string "ERROR"| Measure-Object

```

### Kết quả đếm (Windows: giá trị Count; macOS: con số in ra)

```text
Count    : 7
Average  :
Sum      :
Maximum  :
Minimum  :
Property :

```

## 4.7. Báo cáo tổng hợp

### Các lệnh đã chạy

```shell
#### ni logs/tong_hop.txt
#### "===TONG HOP LOG===" >logs/tong_hop.txt
#### get-content logs/furniture.log | select-string "WARNING" >> logs/tong_hop.txt
#### get-content logs/furniture.log | select-string "ERROR" | Measure-Object >> logs/tong_hop.txt

```

### Nội dung file logs/tong_hop.txt

```text
===TONG HOP LOG===

2026-01-28 08:03:33 [WARNING] Thoi gian phan 
hoi cham
2026-01-28 08:11:33 [WARNING] Mau sofa don sap 
het
2026-01-28 08:15:33 [WARNING] Mau sofa don sap 
het
2026-01-28 08:35:33 [WARNING] Mau sofa don sap 
het




Count    : 7
Average  : 
Sum      : 
Maximum  : 
Minimum  : 
Property : 


```

## 4.8. Excel

> Phần Excel được chấm trực tiếp trên file `data/don_noi_that_quy_1.xlsx`, không cần ghi vào đây.
