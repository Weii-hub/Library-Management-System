# 📚 Hệ Thống Quản Lý Thư Viện Đại Học (Library Management System - LibFlow)

> **Đồ án môn học**: Công nghệ phần mềm (CNPM / CNPMNC)  
> **Trường**: Đại học Ngoại ngữ - Tin học TP.HCM (HUFLIT)  
> **Nhóm thực hiện**: Nhóm sinh viên Công nghệ phần mềm  
> **Thành viên**:
> * **Đào Tuấn Phúc** - MSSV: 24DH113351 (GitHub: [@Weii-hub](https://github.com/Weii-hub))

---

## 🌟 1. Giới thiệu tổng quan (Project Overview)
**LibFlow** là hệ thống phần mềm quản lý thư viện hiện đại hỗ trợ số hóa toàn diện quy trình thư viện trường học / đại học:
* **Quản lý danh mục sách & tác phẩm**: ISBN, tác giả, thể loại, vị trí kệ sách, số lượng tồn và bản sao khả dụng.
* **Quản lý bạn đọc & Thẻ thư viện số**: Cấp thẻ độc giả sinh viên/giảng viên, lịch sử mượn trả và phân quyền.
* **Nghiệp vụ Mượn - Trả & Hạn trả**: Theo dõi phiếu mượn, hạn trả sách, gửi cảnh báo quá hạn.
* **Tính phí phạt & Bồi thường sách**: Tự động tính tiền phạt theo ngày trễ hạn hoặc ghi nhận bồi thường sách hỏng/mất.
* **Báo cáo thống kê trực quan**: Top sách được mượn nhiều nhất, tỷ lệ hoàn trả đúng hạn qua Dashboard đồ thị.

---

## 🛠️ 2. Công nghệ sử dụng (Tech Stack)
* **Backend**: ASP.NET Core MVC (.NET 10) / RESTful API
* **Database**: PostgreSQL (Supabase Cloud) / SQL Server
* **ORM**: Entity Framework Core (Code-First Migration)
* **Frontend**: Razor Views, Bootstrap 5 (Pastel Theme), FontAwesome 6, Chart.js
* **Quy trình quản lý dự án**: Scrum / Agile (GitHub Issues, Milestones, Project Backlog)

---

## 🌿 3. Mô hình nhánh Git (Branching Strategy)

Dự án áp dụng mô hình **Gitflow** chuẩn công nghệ phần mềm:

```
main (Production / Release chính thức)
  │
  └─── develop (Nhánh tích hợp tính năng)
         ├─── feature/book-catalog-management (Quản lý danh mục sách)
         ├─── feature/reader-card-auth (Quản lý độc giả & Thẻ thư viện)
         └─── feature/borrow-return-system (Nghiệp vụ mượn trả sách)
```

* **`main`**: Chứa phiên bản ổn định nhất đã nghiệm thu qua từng Sprint.
* **`develop`**: Nhánh trung gian tích hợp toàn bộ tính năng trước khi đóng gói Release.
* **`feature/*`**: Các nhánh phát triển tính năng độc lập theo từng User Story / GitHub Issue.

---

## 📋 4. Quản lý công việc (Scrum Backlog & Issues)
* Xem danh sách chi tiết các User Stories và Ma trận truy xuất yêu cầu tại [PRODUCT_BACKLOG.md](PRODUCT_BACKLOG.md).
* Theo dõi tiến độ thực hiện thực tế tại tab **[GitHub Issues](../../issues)** của repository này.
