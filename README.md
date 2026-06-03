# A&U English Center - Admin Portal

Hệ thống quản trị nội dung (CMS) và quản lý thông tin học viên dành cho Trung tâm Anh ngữ A&U (phân hệ `admin.aubacgiang.edu.vn`). Hệ thống được xây dựng trên nền tảng framework Laravel, cung cấp các công cụ quản lý khóa đào tạo, đội ngũ giáo viên, tin tức sự kiện, danh mục tài liệu và thông tin đăng ký tư vấn của khách hàng.

---

## 1. Công nghệ sử dụng

*   **Backend Framework**: Laravel 12.x
*   **Ngôn ngữ lập trình**: PHP ^8.2
*   **Cơ sở dữ liệu**: MySQL / MariaDB
*   **Giao diện quản trị**: AdminLTE 3 (Bootstrap 4)
*   **Trình biên tập nội dung**: CKEditor 5 kết hợp CKFinder 3 (Quản lý file & hình ảnh)
*   **Quản lý thư viện**: Composer (PHP) & NPM (JavaScript)

---

## 2. Các chức năng chính của hệ thống

*   **Quản lý Trang chủ (Dashboard)**: Cấu hình linh hoạt thông tin banner, khối số liệu thống kê hoạt động, câu hỏi thường gặp (FAQs), và thư viện hình ảnh/video nổi bật.
*   **Quản lý Menu**: Cho phép tùy biến kéo thả sơ đồ liên kết (Nestable) đa cấp hỗ trợ điều hướng trên giao diện Client.
*   **Quản lý Đào tạo**: Thiết lập thông tin chi tiết về các khóa học (độ tuổi, mô tả ngắn, kết quả đầu ra, phương pháp giảng dạy, học liệu mẫu).
*   **Quản lý Giáo viên**: Quản lý hồ sơ, quốc tịch, bằng cấp chứng chỉ, ảnh đại diện và tiểu sử chuyên môn.
*   **Quản lý Tin tức**: Viết bài, phân chia danh mục tin tức và đếm lượt xem bài viết.
*   **Quản lý Khách hàng**: Tiếp nhận danh sách đăng ký tư vấn từ các biểu mẫu đăng ký trực tuyến, cập nhật trạng thái xử lý hồ sơ (`pending`, `confirmed`, `cancelled`).
*   **Quản lý Tài liệu**: Đăng tải và phân phối các tệp tin tài liệu học tập PDF/Word thông qua CKFinder.
*   **Quản lý Liên hệ**: Cấu hình địa chỉ các chi nhánh cùng bản đồ nhúng và các liên kết mạng xã hội (Facebook, Zalo, YouTube).

---

## 3. Hướng dẫn cài đặt dự án

Để thiết lập ứng dụng chạy dưới môi trường cục bộ (Local Development), vui lòng thực hiện các bước sau:

### Bước 3.1: Nhân bản dự án từ Repository
```bash
git clone <repository_url>
cd <project_directory>
```

### Bước 3.2: Cài đặt các thư viện phụ thuộc (Dependencies)
Cài đặt các gói thư viện PHP qua Composer:
```bash
composer install
```

Cài đặt và xây dựng các tài nguyên CSS/JS:
```bash
npm install
npm run build
```

### Bước 3.3: Thiết lập cấu hình môi trường
Sao chép cấu hình từ tệp mẫu `.env.example`:
```bash
cp .env.example .env
```
Mở tệp `.env` vừa tạo và chỉnh sửa các thông số kết nối Cơ sở dữ liệu cho phù hợp với môi trường của bạn:
```env
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=ten_database_cua_ban
DB_USERNAME=root
DB_PASSWORD=your_password
```

Đồng thời, cấu hình thông tin máy chủ gửi mail SMTP (nếu muốn thử nghiệm chức năng gửi mail tự động khi có khách hàng đăng ký):
```env
MAIL_MAILER=smtp
MAIL_HOST=smtp.gmail.com
MAIL_PORT=587
MAIL_USERNAME=your_email@gmail.com
MAIL_PASSWORD=your_app_password
ADMIN_EMAIL_RECIPIENT=email_nhan_thong_bao@example.com
```

### Bước 3.4: Tạo Khóa ứng dụng (Application Key)
```bash
php artisan key:generate
```

### Bước 3.5: Tạo cấu trúc bảng và nạp dữ liệu mẫu (Migrations & Seeders)
Thực hiện chạy toàn bộ tệp migration kèm theo nạp dữ liệu khởi tạo của phân hệ Trung tâm Anh ngữ:
```bash
php artisan migrate --seed
```
*Lưu ý: Quá trình này sẽ chạy lớp `EnglishCenterSeeder` để nạp sẵn dữ liệu cấu hình trang chủ, các khóa học demo, danh sách giáo viên và thông tin liên hệ ban đầu.*

### Bước 3.6: Tạo liên kết thư mục lưu trữ (Storage Link)
Tạo liên kết để hiển thị các tệp tin tải lên từ hệ thống quản trị ra thư mục public:
```bash
php artisan storage:link
```

---

## 4. Khởi chạy ứng dụng

Chạy máy chủ PHP nội bộ:
```bash
php artisan serve
```
Ứng dụng sẽ hoạt động tại địa chỉ mặc định: `http://127.0.0.1:8000`.

Truy cập trang quản trị thông qua liên kết: `http://127.0.0.1:8000/admin/login`

### Thông tin đăng nhập quản trị viên mặc định:
*   **Email**: `root@gmail.com`
*   **Mật khẩu**: `password`

---

## 5. Quy chuẩn phát triển mã nguồn trong dự án

*   **Tạo Slug**: Dự án sử dụng `App\Http\Traits\SlugGenerator` để đồng bộ hóa việc tạo slug thân thiện cho URL theo định dạng `tieu-de-bai-viet-id` nhằm tránh trùng lặp thông tin trong cơ sở dữ liệu.
*   **Quản lý File**: Các đầu vào chọn ảnh hoặc file trong hệ thống CMS sử dụng bộ Blade Components tương thích cao với popup CKFinder:
    *   `<x-inputs.image-link>`: Chọn một ảnh đơn.
    *   `<x-inputs.image-link-array>`: Chọn và quản lý danh sách nhiều ảnh.
    *   `<x-inputs.file-link>`: Chọn các định dạng tài liệu học tập (.pdf, .docx).
```,Description:
