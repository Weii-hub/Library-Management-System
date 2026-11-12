# PRODUCT BACKLOG - HỆ THỐNG QUẢN LÝ THƯ VIỆN (LIBFLOW)

## 1. TỔNG QUAN PRODUCT BACKLOG
* **Tổng số User Stories**: 10 Hạng mục (PBIs)
* **Tổng điểm Story Points (Estimated SP)**: 44 SP
* **Phân chia Sprint**:
  * **Sprint 1 (Hoàn thành - 16 SP)**: CSDL Thư viện, Quản lý Sách, Thẻ Độc Giả, Tìm kiếm.
  * **Sprint 2 (Đang thực hiện - 16 SP)**: Nghiệp vụ Mượn - Trả sách, Phí phạt trễ hạn, Quét Barcode quầy.
  * **Sprint 3 (Kế hoạch tiếp theo - 12 SP)**: Đặt chỗ trước (Reservation), Dashboard Báo cáo thống kê, Bug fixes.

---

## 2. DANH SÁCH CHI TIẾT USER STORIES (PBIs)

### 🚀 SPRINT 1: NỀN TẢNG DỮ LIỆU & QUẢN LÝ ĐẦU SÁCH (16 SP - DONE)

#### PBI-01: Khởi tạo CSDL Thư viện (SQL/EF Core) & Cấu hình Docker
* **Issue**: #1 | **SP**: 3 SP | **Ưu tiên**: Must Have | **Trạng thái**: Closed
* **User Story**: Là Nhà phát triển, tôi muốn khởi tạo cấu trúc CSDL Thư viện (Books, Authors, Categories, Readers, BorrowRecords) qua EF Core Code-First để đảm bảo toàn vẹn dữ liệu cho toàn bộ hệ thống.

#### PBI-02: Quản lý Danh mục Sách & Tác giả (CRUD Book Catalog & ISBN)
* **Issue**: #2 | **SP**: 5 SP | **Ưu tiên**: Must Have | **Trạng thái**: Closed
* **User Story**: Là Thủ thư, tôi muốn thêm, sửa, xóa thông tin sách (Tên sách, ISBN, Tác giả, Năm XB, Số lượng tồn) để quản lý kho sách chính xác.

#### PBI-03: Quản lý Độc giả & Cấp Thẻ Thư viện số (Reader Card & Auth)
* **Issue**: #3 | **SP**: 5 SP | **Ưu tiên**: Must Have | **Trạng thái**: Closed
* **User Story**: Là Độc giả / Thủ thư, tôi muốn cấp mã thẻ thư viện kèm mã vạch số hóa để xác thực danh tính nhanh chóng khi giao dịch tại quầy.

#### PBI-04: Tìm kiếm & Lọc Sách đa tiêu chí (Nhan đề, Thể loại, Tác giả)
* **Issue**: #4 | **SP**: 3 SP | **Ưu tiên**: Must Have | **Trạng thái**: Closed
* **User Story**: Là Độc giả, tôi muốn tra cứu sách theo nhan đề, thể loại hoặc tác giả kèm tình trạng còn sách hay không để tìm sách nhanh chóng.

---

### ⏳ SPRINT 2: NGHIỆP VỤ MƯỢN TRẢ & KIỂM SOÁT HẠN (16 SP - IN PROGRESS)

#### PBI-05: Nghiệp vụ Mượn - Trả Sách & Kiểm soát Hạn trả (Borrowing Flow)
* **Issue**: #5 | **SP**: 8 SP | **Ưu tiên**: Must Have | **Trạng thái**: Open (In Progress)
* **User Story**: Là Thủ thư, tôi muốn tạo phiếu mượn sách cho độc giả (tối đa 3 quyển/lần, hạn 14 ngày), tự động trừ số lượng sách khả dụng trong kho và ghi nhận khi độc giả hoàn trả.

#### PBI-06: Tính phí phạt trễ hạn tự động & Bồi thường sách hỏng/mất
* **Issue**: #6 | **SP**: 5 SP | **Ưu tiên**: Should Have | **Trạng thái**: Open (To Do)
* **User Story**: Là Thủ thư, tôi muốn hệ thống tự động tính phí quá hạn (ví dụ: 2.000đ/ngày trễ) và ghi nhận phiếu bồi thường nếu sách bị hư hỏng hoặc thất lạc.

#### PBI-07: Tích hợp quét mã vạch / Barcode Scanner cho Thủ thư tại quầy
* **Issue**: #7 | **SP**: 3 SP | **Ưu tiên**: Could Have | **Trạng thái**: Open (To Do)
* **User Story**: Là Thủ thư, tôi muốn dùng máy quét Barcode quét mã thẻ độc giả và mã sách để tạo phiếu mượn/trả trong 3 giây thay vì nhập tay.

---

### 🔮 SPRINT 3: TÍNH NĂNG NÂNG CAO & BÁO CÁO THỐNG KÊ (12 SP - BACKLOG)

#### PBI-08: Đặt chỗ trước (Book Reservation) khi sách đang được mượn hết
* **Issue**: #8 | **SP**: 5 SP | **Ưu tiên**: Should Have | **Trạng thái**: Open (Backlog)
* **User Story**: Là Độc giả, tôi muốn đặt chỗ trước các đầu sách hot đang hết để khi có độc giả khác trả sách, hệ thống sẽ ưu tiên giữ sách cho tôi trong 48h.

#### PBI-09: Dashboard Báo cáo Thống kê Sách mượn nhiều nhất & Độc giả tích cực
* **Issue**: #9 | **SP**: 5 SP | **Ưu tiên**: Should Have | **Trạng thái**: Open (Backlog)
* **User Story**: Là Quản lý Thư viện, tôi muốn xem biểu đồ Chart.js thống kê top 10 sách mượn nhiều nhất trong tháng và danh sách sinh viên đọc nhiều sách nhất.

#### PBI-10: Sửa lỗi tính sai số lượng tồn khả dụng (Available Copies) khi trả sách
* **Issue**: #10 | **SP**: 2 SP | **Ưu tiên**: High Bug | **Trạng thái**: Open (Bug)
* **User Story**: Là Hệ thống, cần khắc phục race condition khi nhiều lượt trả sách diễn ra đồng thời khiến số lượng bản sao khả dụng bị lệch so với thực tế.
