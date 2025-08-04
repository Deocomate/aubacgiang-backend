<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\Hash;

class KingExpressBusSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run(): void
    {
        // Disable foreign key constraints to allow truncating tables with relationships
        Schema::disableForeignKeyConstraints();

        // Truncate tables in the correct order to avoid foreign key constraint issues
        DB::table('sessions')->truncate();
        DB::table('password_reset_tokens')->truncate();
        DB::table('failed_jobs')->truncate();
        DB::table('job_batches')->truncate();
        DB::table('jobs')->truncate();
        DB::table('menus')->truncate(); // Đảm bảo bảng menus được truncate
        DB::table('news')->truncate();
        DB::table('categories')->truncate();
        DB::table('customers')->truncate();
        DB::table('trainings')->truncate();
        DB::table('teachers')->truncate();
        DB::table('home_page')->truncate();
        DB::table('contact')->truncate();
        DB::table('parents_corner')->truncate();
        DB::table('document')->truncate();
        DB::table('users')->truncate();
        DB::table('migrations')->truncate();
        DB::table('cache')->truncate();
        DB::table('cache_locks')->truncate();


        // Seed 'users' table
        DB::table('users')->insert([
            [
                'id' => 1,
                'name' => 'root',
                'email' => 'root@gmail.com',
                'email_verified_at' => null,
                'password' => Hash::make('password'),
                'remember_token' => 'rB7bVF443il2gYRdNDzHZF4A22CUMfx8xEhCvERsv5ZstGTkIQqDTUUQRX8f',
                'created_at' => null,
                'updated_at' => null,
            ],
        ]);

        // Seed 'categories' table
        DB::table('categories')->insert([
            [
                'id' => 1,
                'name' => 'Kiến thức và kinh nghiệm',
                'slug' => 'kien-thuc-va-kinh-nghiem-1',
                'count' => 3,
                'created_at' => '2025-07-21 03:53:45',
                'updated_at' => '2025-07-21 03:53:45',
            ],
        ]);

        // Seed 'contact' table
        DB::table('contact')->insert([
            [
                'id' => 1,
                'address' => json_encode([
                    [
                        "address" => "AU Lạng Giang: Số 50.51 khu HDB, tổ dân phố Toàn Mỹ, xã Lạng Giang, tỉnh Bắc Giang.",
                        "googlemap" => "" // Placeholder
                    ],
                    [
                        "address" => "AU Bắc Giang: Tầng 1, nhà B, kí túc xá sinh viên, đường Hoàng Văn Thụ, phường Bắc Giang, tỉnh Bắc Giang",
                        "googlemap" => "" // Placeholder
                    ]
                ]),
                'phone' => '0979798426',
                'hotline' => '0979 798 426 - 0868234966',
                'email' => 'aubacgiang@gmail.com',
                'zalo' => '0962435369',
                'facebook' => 'https://web.facebook.com',
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);

        // Seed 'home_page' table
        DB::table('home_page')->insert([
            [
                'id' => 1,
                'banners' => '{"title":"Khơi dậy tiềm năng, vững bước tương lai cùng AU English","description":"Môi trường học tập chuẩn quốc tế, giúp con tự tin giao tiếp và chinh phục các kỳ thi.","images":["\\/userfiles\\/images\\/R5AT4211.jpg","\\/userfiles\\/images\\/R5AT4212.jpg","\\/userfiles\\/images\\/R5AT4215.jpg"]}',
                'stats' => '[{"value":"10","description":"Năm kinh nghiệm","images":"\\/userfiles\\/images\\/R5AT4219.jpg"},{"value":"30","description":"Giáo viên ưu tú","images":"\\/userfiles\\/images\\/R5AT4222.jpg"}]',
                'fags' => '[{"question":"Trung tâm có lớp học thử miễn phí không?","answer":"Có, chúng tôi có các buổi học thử định kỳ. Vui lòng để lại thông tin để được tư vấn lịch học gần nhất."},{"question":"Lộ trình học cho bé được xây dựng như thế nào?","answer":"Mỗi học viên sẽ được kiểm tra đầu vào và tư vấn lộ trình cá nhân hóa để đảm bảo hiệu quả học tập tốt nhất."},{"question":"Đội ngũ giáo viên của trung tâm có trình độ như thế nào?","answer":"100% giáo viên tại AU English có bằng cấp sư phạm, chứng chỉ giảng dạy quốc tế (TESOL\\/IELTS) và nhiều năm kinh nghiệm."}]',
                'images' => '["\\/userfiles\\/images\\/R5AT4240.jpg","\\/userfiles\\/images\\/R5AT4246.jpg","\\/userfiles\\/images\\/R5AT4255.jpg"]',
                'link_youtubes' => '["https:\\/\\/www.youtube.com\\/watch?v=fXXcJJENN9U","https:\\/\\/www.youtube.com\\/watch?v=BaR4iCqJFWk"]',
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);

        // Seed 'news' table
        DB::table('news')->insert([
            [
                'id' => 1,
                'slug' => 'bi-quyet-giup-con-hoc-tieng-anh-tai-nha-1',
                'title' => 'Bí quyết giúp con học tiếng Anh tại nhà',
                'excerpt' => 'Khen ngợi và động viên là liều thuốc tinh thần vô giá. Thay vì chỉ trích lỗi sai, hãy tập trung vào những nỗ lực và tiến bộ của con, dù là nhỏ nhất. Sự công nhận từ cha mẹ sẽ giúp con xây dựng sự tự tin và không sợ mắc lỗi khi học một ngôn ngữ mới.',
                'thumbnail' => '/userfiles/images/R5AT3841.jpg',
                'author' => 'Admin',
                'view' => 1456,
                'category_id' => 1,
                'content' => '<h2>Khám phá phương pháp học hiệu quả cho trẻ</h2><p>Đừng biến việc học thành áp lực. Hãy lồng ghép tiếng Anh vào các trò chơi mà trẻ yêu thích như trốn tìm (đếm số bằng tiếng Anh), board game (dạy về màu sắc, con vật), hoặc các hoạt động nghệ thuật. Khi trẻ cảm thấy vui vẻ, khả năng tiếp thu và ghi nhớ sẽ tăng lên đáng kể.</p><p>Đọc sách truyện song ngữ hoặc truyện tranh tiếng Anh là một cách tuyệt vời để mở rộng vốn từ vựng và làm quen với cấu trúc câu. Hãy bắt đầu với những cuốn sách có hình ảnh minh họa đẹp mắt và nội dung đơn giản, phù hợp với lứa tuổi của con. Cùng con đọc và giải thích những từ mới sẽ giúp tăng cường sự gắn kết gia đình.</p><p>Khen ngợi và động viên là liều thuốc tinh thần vô giá. Thay vì chỉ trích lỗi sai, hãy tập trung vào những nỗ lực và tiến bộ của con, dù là nhỏ nhất. Sự công nhận từ cha mẹ sẽ giúp con xây dựng sự tự tin và không sợ mắc lỗi khi học một ngôn ngữ mới.</p><blockquote><p>Việc học ngoại ngữ sớm không chỉ giúp trẻ phát triển trí não mà còn mở ra nhiều cơ hội trong tương lai.</p></blockquote>',
                'created_at' => '2025-07-21 03:53:45',
                'updated_at' => '2025-07-21 05:41:02',
            ],
            [
                'id' => 2,
                'slug' => 'bi-quyet-giup-con-hoc-tieng-anh-tai-nha-meo-so-2-2',
                'title' => 'Bí quyết giúp con học tiếng Anh tại nhà - Mẹo số 2',
                'excerpt' => 'Khen ngợi và động viên là liều thuốc tinh thần vô giá. Thay vì chỉ trích lỗi sai, hãy tập trung vào những nỗ lực và tiến bộ của con, dù là nhỏ nhất. Sự công nhận từ cha mẹ sẽ giúp con xây dựng sự tự tin và không sợ mắc lỗi khi học một ngôn ngữ mới.',
                'thumbnail' => '/userfiles/images/R5AT3838.jpg',
                'author' => 'AU English',
                'view' => 120,
                'category_id' => 1,
                'content' => '<h2>Khám phá phương pháp học hiệu quả cho trẻ</h2><p>Một trong những phương pháp hiệu quả nhất để giúp trẻ học tiếng Anh tại nhà là tạo ra một môi trường ngôn ngữ tự nhiên. Phụ huynh có thể dán nhãn các đồ vật trong nhà bằng tiếng Anh, cùng con xem các chương trình hoạt hình hoặc nghe nhạc thiếu nhi bằng tiếng Anh. Việc tiếp xúc thường xuyên sẽ giúp con thẩm thấu ngôn ngữ một cách vô thức.</p><p>Đừng biến việc học thành áp lực. Hãy lồng ghép tiếng Anh vào các trò chơi mà trẻ yêu thích như trốn tìm (đếm số bằng tiếng Anh), board game (dạy về màu sắc, con vật), hoặc các hoạt động nghệ thuật. Khi trẻ cảm thấy vui vẻ, khả năng tiếp thu và ghi nhớ sẽ tăng lên đáng kể.</p><p>Đọc sách truyện song ngữ hoặc truyện tranh tiếng Anh là một cách tuyệt vời để mở rộng vốn từ vựng và làm quen với cấu trúc câu. Hãy bắt đầu với những cuốn sách có hình ảnh minh họa đẹp mắt và nội dung đơn giản, phù hợp với lứa tuổi của con. Cùng con đọc và giải thích những từ mới sẽ giúp tăng cường sự gắn kết gia đình.</p><blockquote>Việc học ngoại ngữ sớm không chỉ giúp trẻ phát triển trí não mà còn mở ra nhiều cơ hội trong tương lai.</blockquote>',
                'created_at' => '2025-07-20 03:53:45',
                'updated_at' => '2025-07-20 03:53:45',
            ],
            [
                'id' => 3,
                'slug' => 'bi-quyet-giup-con-hoc-tieng-anh-tai-nha-meo-so-3-3',
                'title' => 'Bí quyết giúp con học tiếng Anh tại nhà - Mẹo số 3',
                'excerpt' => 'Đọc sách truyện song ngữ hoặc truyện tranh tiếng Anh là một cách tuyệt vời để mở rộng vốn từ vựng và làm quen với cấu trúc câu. Hãy bắt đầu với những cuốn sách có hình ảnh minh họa đẹp mắt và nội dung đơn giản, phù hợp với lứa tuổi của con. Cùng con đọc và giải thích những từ mới sẽ giúp tăng cường sự gắn kết gia đình.',
                'thumbnail' => '/userfiles/images/R5AT3841.jpg',
                'author' => 'AU English',
                'view' => 136,
                'category_id' => 1,
                'content' => '<h2>Khám phá phương pháp học hiệu quả cho trẻ</h2><p>Đừng biến việc học thành áp lực. Hãy lồng ghép tiếng Anh vào các trò chơi mà trẻ yêu thích như trốn tìm (đếm số bằng tiếng Anh), board game (dạy về màu sắc, con vật), hoặc các hoạt động nghệ thuật. Khi trẻ cảm thấy vui vẻ, khả năng tiếp thu và ghi nhớ sẽ tăng lên đáng kể.</p><p>Khen ngợi và động viên là liều thuốc tinh thần vô giá. Thay vì chỉ trích lỗi sai, hãy tập trung vào những nỗ lực và tiến bộ của con, dù là nhỏ nhất. Sự công nhận từ cha mẹ sẽ giúp con xây dựng sự tự tin và không sợ mắc lỗi khi học một ngôn ngữ mới.</p><p>Một trong những phương pháp hiệu quả nhất để giúp trẻ học tiếng Anh tại nhà là tạo ra một môi trường ngôn ngữ tự nhiên. Phụ huynh có thể dán nhãn các đồ vật trong nhà bằng tiếng Anh, cùng con xem các chương trình hoạt hình hoặc nghe nhạc thiếu nhi bằng tiếng Anh. Việc tiếp xúc thường xuyên sẽ giúp con thẩm thấu ngôn ngữ một cách vô thức.</p><blockquote>Việc học ngoại ngữ sớm không chỉ giúp trẻ phát triển trí não mà còn mở ra nhiều cơ hội trong tương lai.</blockquote>',
                'created_at' => '2025-07-19 03:53:45',
                'updated_at' => '2025-07-19 03:53:45',
            ],
        ]);

        // Seed 'parents_corner' table
        DB::table('parents_corner')->insert([
            [
                'id' => 1,
                'priority' => 1,
                'slug' => 'phu-huynh-tra-dan-chuong-0',
                'image' => '/userfiles/images/R5AT4198.jpg',
                'rate' => 'Sau khi cho con học tại trung tâm con tôi đã tự tin hơn trước rất nhiều!',
                'name' => 'Phụ huynh Trà Đan Chương',
                'describe' => 'Phụ huynh bé Phúc',
                'content' => '<p>Sau một khóa học tại AU, bé nhà mình đã mạnh dạn hơn rất nhiều. Trước đây con rất nhát, không dám nói tiếng Anh, nhưng giờ con có thể tự tin giới thiệu bản thân và hát các bài hát tiếng Anh. Các thầy cô rất nhiệt tình và kiên nhẫn, phương pháp học qua trò chơi thực sự hiệu quả.</p>',
                'created_at' => '2025-07-21 03:53:45',
                'updated_at' => '2025-07-21 05:44:12',
            ],
            [
                'id' => 2,
                'priority' => 2,
                'slug' => 'phu-huynh-anh-tiep-chinh-vy-1',
                'image' => '/userfiles/images/R5AT4200.jpg',
                'rate' => 'Chương trình học bài bản, con tiến bộ rõ rệt.',
                'name' => 'Phụ huynh Anh. Tiếp Chính Vỹ',
                'describe' => 'Phụ huynh bé Vũ',
                'content' => 'Tôi rất hài lòng với lộ trình học tập tại trung tâm. Con không chỉ được học với giáo viên bản xứ mà còn được củng cố ngữ pháp thường xuyên. Điểm số trên lớp của con đã cải thiện đáng kể, và quan trọng nhất là con tìm thấy niềm yêu thích với môn tiếng Anh.',
                'created_at' => '2025-07-21 03:53:45',
                'updated_at' => '2025-07-21 03:53:45',
            ],
            [
                'id' => 3,
                'priority' => 3,
                'slug' => 'phu-huynh-lo-trung-2',
                'image' => '/userfiles/images/R5AT4202.jpg',
                'rate' => 'Trung tâm chuyên nghiệp, giáo viên tận tâm.',
                'name' => 'Phụ huynh Lò Trung',
                'describe' => 'Phụ huynh bé Khương',
                'content' => 'Điều tôi ấn tượng nhất là sự chuyên nghiệp và tận tâm của đội ngũ AU. Từ giáo viên đến các bạn trợ giảng đều rất quan tâm đến từng học viên. Trung tâm thường xuyên cập nhật tình hình học tập của con, giúp tôi nắm bắt được sự tiến bộ và phối hợp cùng nhà trường để hỗ trợ con tốt nhất.',
                'created_at' => '2025-07-21 03:53:45',
                'updated_at' => '2025-07-21 03:53:45',
            ],
        ]);

        // Seed 'teachers' table
        DB::table('teachers')->insert([
            [
                'id' => 1,
                'priority' => 1,
                'full_name' => 'Thầy giáo JASON TYLER REILLY',
                'role' => 'Quốc tịch Mỹ',
                'qualifications' => 'Trình độ: Cử nhân khoa học giáo dục Đại Học Wisconsin - Madison - Mỹ, Chứng chỉ giảng dạy Quốc tế tại Đại Học Wisconsin - Madison, Gần 10 năm kinh nghiệm giảng dạy các độ tuổi mầm non và tiểu học',
                'avatar' => '/userfiles/images/teachers/Screenshot%20from%202025-07-27%2022-38-18.png',
                'slug' => 'thay-giao-jason-tyler-reilly-1',
                'facebook' => 'https://facebook.com/auenglish',
                'email' => 'chu.kiem@example.net',
                'description' => '<h3>Kinh nghiệm giảng dạy</h3><p>Với hơn 5 năm kinh nghiệm giảng dạy, thầy/cô đã giúp đỡ hàng trăm học viên cải thiện trình độ tiếng Anh và đạt được mục tiêu học tập. Phương pháp giảng dạy tập trung vào sự tương tác và truyền cảm hứng cho học viên.</p>',
                'created_at' => '2025-07-21 03:53:45',
                'updated_at' => '2025-07-27 15:41:35',
            ],
            [
                'id' => 2,
                'priority' => 2,
                'full_name' => 'Thầy giáo ELLIS JOHN WARD',
                'role' => 'Quốc tịch Anh',
                'qualifications' => 'Trình độ: Cử nhân sư phạm Ngôn Ngữ Anh tại Đại học Leicester Anh Quốc, Chứng chỉ giảng dạy Quốc tế tại Anh Quốc',
                'avatar' => '/userfiles/images/teachers/Screenshot%20from%202025-07-27%2022-42-24.png',
                'slug' => 'thay-giao-ellis-john-ward-2',
                'facebook' => 'https://facebook.com/auenglish',
                'email' => 'nghia.khau@example.org',
                'description' => '<h3>Kinh nghiệm giảng dạy</h3><p>Với hơn 5 năm kinh nghiệm giảng dạy, thầy/cô đã giúp đỡ hàng trăm học viên cải thiện trình độ tiếng Anh và đạt được mục tiêu học tập. Phương pháp giảng dạy tập trung vào sự tương tác và truyền cảm hứng cho học viên.</p>',
                'created_at' => '2025-07-21 03:53:45',
                'updated_at' => '2025-07-27 15:43:43',
            ],
            [
                'id' => 3,
                'priority' => 3,
                'full_name' => 'Thầy giáo JACOB ADAM MCDONNELL',
                'role' => 'Quốc tịch Anh',
                'qualifications' => 'Trình độ: Thạc sĩ kĩ thuật chuyên nghành hàng không - Anh Quốc, Chứng chỉ giảng dạy Quốc tế tại Anh Quốc',
                'avatar' => '/userfiles/images/teachers/Screenshot%20from%202025-07-27%2022-44-00.png',
                'slug' => 'thay-giao-jacob-adam-mcdonnell-3',
                'facebook' => 'https://facebook.com/auenglish',
                'email' => 'thy68@example.org',
                'description' => '<h3>Kinh nghiệm giảng dạy</h3><p>Với hơn 5 năm kinh nghiệm giảng dạy, thầy/cô đã giúp đỡ hàng trăm học viên cải thiện trình độ tiếng Anh và đạt được mục tiêu học tập. Phương pháp giảng dạy tập trung vào sự tương tác và truyền cảm hứng cho học viên.</p>',
                'created_at' => '2025-07-21 03:53:45',
                'updated_at' => '2025-07-27 15:44:41',
            ],
            [
                'id' => 4,
                'priority' => 4,
                'full_name' => 'Thầy giáo Jai Kattenberg',
                'role' => 'Quốc tịch Úc',
                'qualifications' => 'Trình độ: Cử nhân nghệ thuật Đại học Griffith -Úc , Chứng chỉ giảng dạy Quốc tế , Kinh nghiệm dạy các độ tuổi: 3 năm dạy các độ tuổi mầm non - tiểu học - THCS',
                'avatar' => '/userfiles/images/teachers/Screenshot%20from%202025-07-27%2022-45-43.png',
                'slug' => 'thay-giao-jai-kattenberg-4',
                'facebook' => 'https://facebook.com/auenglish',
                'email' => 'aubacgiang@gmail.com',
                'description' => null,
                'created_at' => '2025-07-27 15:47:11',
                'updated_at' => '2025-07-27 15:47:11',
            ],
        ]);

        // Seed 'trainings' table
        DB::table('trainings')->insert([
            [
                'id' => 1,
                'priority' => 1,
                'slug' => 'tieng-anh-mau-giao-3-6-tuoi-1',
                'title' => 'Tiếng Anh Mẫu giáo (3 - 6 tuổi)',
                'age' => '3 - 6 tuổi',
                'description' => 'Giai đoạn vàng để con bắt đầu học ngôn ngữ mới. Chương trình giúp con tiếp cận tiếng Anh một cách tự nhiên, vui vẻ và hiệu quả, tạo nền tảng vững chắc cho tương lai.',
                'thumbnail' => '/userfiles/images/R5AT3881.jpg',
                'outcome' => 'Phát âm đúng theo phương pháp ngữ âm quốc tế | Nhận biết và đánh vần lưu loát | Giao tiếp tự tin ngay từ những năm đầu học',
                'method' => 'Học trực tuyến',
                'content' => '<h1><strong>CHƯƠNG TRÌNH TIẾNG ANH MẪU GIÁO AU</strong></h1><h2> </h2><h2><strong>Nắm bắt độ tuổi vàng</strong></h2><p><strong>3-6 tuổi</strong> là thời kỳ <strong>\"vàng\"</strong> để con bắt đầu học một ngôn ngữ mới. Cơ hội này chỉ đến một lần trong cuộc đời, bỏ lỡ giai đoạn then chốt này, con sẽ khó đạt tới độ phát triển ngôn ngữ tối ưu và toàn diện.</p><p> </p><h2><strong>Điểm nổi bật của chương trình</strong></h2><ol><li><strong>Tập trung nghe – nói:</strong> Giúp con phản xạ nhanh với ngôn ngữ và phát âm chuẩn bản xứ từ nhỏ. <strong>Tiếng Anh mẫu giáo của AU là chương trình ngữ âm tiếng Anh 5 cấp độ</strong>, phù hợp với trẻ từ 3 đến 6 tuổi. Chương trình giúp trẻ làm quen và thành thạo <strong>44 âm trong tiếng Anh</strong> thông qua các hoạt động tương tác như <strong>bài hát, trò chơi và câu đố</strong>.</li><li><strong>Học vui vẻ, hiệu quả:</strong> Chương trình sử dụng <strong>hình ảnh sinh động, trò chơi, bài hát và hoạt động tương tác</strong>, giúp trẻ học tập một cách vui vẻ và hiệu quả. Qua mỗi cấp độ, trẻ dần phát triển kỹ năng ngôn ngữ và <strong>tự tin sử dụng tiếng Anh trong giao tiếp hàng ngày</strong>.</li><li><strong>Tiếp cận tự nhiên:</strong> Chương trình giúp trẻ tiếp cận tiếng Anh một cách tự nhiên thông qua <strong>phương pháp ngữ âm hiện đại</strong>. Trẻ sẽ được làm quen với âm chữ cái, ghép vần và phát âm chuẩn ngay từ những năm đầu đời, tạo <strong>nền tảng vững chắc cho kỹ năng đọc và viết</strong>.</li></ol><h2> </h2><h2><strong>Lợi ích chương trình mang lại</strong></h2><ul><li><strong>Phát âm đúng</strong> theo phương pháp ngữ âm quốc tế</li><li><strong>Nhận biết và đánh vần</strong> lưu loát</li><li><strong>Phát triển kỹ năng đọc và viết</strong> từ sớm</li><li><strong>Giao tiếp tự tin</strong> ngay từ những năm đầu học tiếng Anh</li></ul><p> </p><h2> </h2><h2><strong>KẾT LUẬN</strong></h2><p><strong>Chương trình Tiếng Anh mẫu giáo AU</strong> là lựa chọn hoàn hảo để con bạn khởi đầu hành trình chinh phục tiếng Anh một cách <strong>tự nhiên, vui vẻ và hiệu quả</strong>!</p>',
                'images' => '["\\/userfiles\\/images\\/R5AT3893.jpg","\\/userfiles\\/images\\/R5AT3881.jpg","\\/userfiles\\/images\\/R5AT3884.jpg"]',
                'youtube_review_link' => 'https://www.youtube.com/watch?v=2',
                'created_at' => '2025-07-21 03:53:45',
                'updated_at' => '2025-07-21 06:48:01',
            ],
            [
                'id' => 2,
                'priority' => 2,
                'slug' => 'tieng-anh-tieu-hoc-6-11-tuoi-2',
                'title' => 'Tiếng Anh Tiểu học (6 - 11 tuổi)',
                'age' => '6 - 11 tuổi',
                'description' => 'Tiếng Anh không chỉ là điểm số, mà là kỹ năng sống. Chương trình cung cấp một lộ trình rõ ràng, bài bản, giúp con tự tin giao tiếp và đạt kết quả cao trong học tập.',
                'thumbnail' => '/userfiles/images/R5AT3898.jpg',
                'outcome' => 'Tự tin giao tiếp với giáo viên bản xứ | Nắm vững ngữ pháp và từ vựng theo chuẩn Cambridge | Cải thiện điểm số trên lớp',
                'method' => 'Học trực tuyến',
                'content' => '<h1><strong>KHOÁ HỌC TIẾNG ANH TIỂU HỌC AU</strong></h1><br><h2><strong>Tại sao con cần học Tiếng Anh bài bản ở giai đoạn tiểu học?</strong></h2><p>Giai đoạn con học tiểu học, <strong>Tiếng Anh không chỉ là điểm số, mà là kỹ năng sống</strong>. Phụ huynh cần một lộ trình rõ ràng, đo lường được sự tiến bộ thực sự.</p><br><p>Con cần một <strong>môi trường học tập bài bản, hiệu quả</strong> xứng đáng với sự đầu tư.</p><br><br><h1><strong>ĐẶC ĐIỂM ĐẶC BIỆT CỦA KHOÁ HỌC</strong></h1><br><h2><strong>1. 100% CON HỌC VỚI GIÁO VIÊN NƯỚC NGOÀI</strong></h2><p>Chương trình tập trung vào <strong>phát triển kỹ năng giao tiếp thực tế</strong>, giúp trẻ tự tin nói tiếng Anh ngay từ những buổi học đầu tiên.</p><br><p>Với sự hướng dẫn của <strong>giáo viên bản xứ và trợ giảng tận tâm</strong>, trẻ sẽ được thực hành phát âm chuẩn, học cách diễn đạt suy nghĩ mạch lạc và thể hiện bản thân bằng tiếng Anh một cách tự nhiên nhất.</p><br><br><h2><strong>2. CHƯƠNG TRÌNH HỌC TẬP TÍCH HỢP</strong></h2><p>Tại AU, các em được học song song theo <strong>lộ trình tiếng Anh học thuật bài bản</strong>, bám sát khung chương trình <strong>Cambridge do Nhà xuất bản Đại học Oxford phát triển</strong>.</p><br><p>Bên cạnh đó, AU đặc biệt chú trọng hỗ trợ học sinh nâng cao kết quả học tập tại trường thông qua <strong>các buổi học ngữ pháp bổ trợ miễn phí</strong>, giúp củng cố kiến thức, cải thiện điểm số và tăng sự tự tin trong lớp học chính khóa.</p><br><br><h2><strong>3. LỘ TRÌNH HOÁ CÁ NHÂN</strong></h2><p>Với <strong>lộ trình hoá cá nhân theo khả năng của con</strong> và hệ thống đánh giá kép. Con được điều chỉnh kịp thời nhờ được <strong>đánh giá liên tục</strong>.</p><br><p><strong>Bố mẹ biết chính xác con đang ở đâu, mạnh gì – yếu gì</strong> qua báo cáo chi tiết định kỳ.</p><br><br><h2><strong>4. HỆ THỐNG HỌC LIỆU TOÀN DIỆN</strong></h2><p><strong>Hệ thống giao bài tập online</strong> trên nền tảng trực tuyến của <strong>nhà xuất bản Đại học Oxford</strong> giúp con hào hứng và tiến bộ nhanh trong học tập.</p><br><p>Bên cạnh đó, <strong>Phụ huynh cũng dễ dàng theo dõi điểm số và lộ trình học</strong> của con hơn khi điểm số được chấm tự động trên nền tảng.</p><br><br><hr><br><h2><strong>KẾT LUẬN</strong></h2><p><strong>Khoá học Tiếng Anh Tiểu học AU</strong> mang đến cho con một hành trình học tập <strong>chuyên nghiệp, hiệu quả và đầy thú vị</strong>, giúp con tự tin chinh phục tiếng Anh và chuẩn bị tốt nhất ch',
                'images' => '["\\/userfiles\\/images\\/R5AT3879.jpg","\\/userfiles\\/images\\/R5AT3894.jpg","\\/userfiles\\/images\\/R5AT3884.jpg"]',
                'youtube_review_link' => 'https://www.youtube.com/watch?v=2',
                'created_at' => '2025-07-21 03:53:45',
                'updated_at' => '2025-07-21 03:53:45',
            ],
            [
                'id' => 3,
                'priority' => 3,
                'slug' => 'tieng-anh-thcs-11-13-tuoi-3',
                'title' => 'Tiếng Anh THCS (11 - 13 tuổi)',
                'age' => '11 - 13 tuổi',
                'description' => 'Lộ trình tối ưu giúp học sinh xây dựng nền tảng tiếng Anh học thuật vững chắc, sẵn sàng chinh phục các kỳ thi quan trọng như IELTS ở bậc THPT.',
                'thumbnail' => '/userfiles/images/R5AT3898.jpg',
                'outcome' => 'Nền tảng Ngữ pháp - Từ vựng học thuật vững chắc | Thành thạo 4 kỹ năng Nghe - Nói - Đọc - Viết | Đạt trình độ tương đương B1-B2 Cambridge',
                'method' => 'Học tại trung tâm',
                'content' => '<h1><strong>LỘ TRÌNH TỐI ƯU DÀNH CHO HỌC SINH THCS</strong></h1><h2><strong>Sẵn sàng chinh phục IELTS ở bậc THPT</strong></h2><br><h2><strong>Tại sao giai đoạn THCS lại quan trọng?</strong></h2><p>Giai đoạn học THCS <strong>(từ lớp 6 đến lớp 9)</strong> là thời điểm quan trọng để học sinh <strong>xây dựng nền tảng tiếng Anh vững chắc</strong>, chuẩn bị cho các mục tiêu học thuật cao hơn như <strong>IELTS ở cấp 3</strong>.</p><br><p>Tại <strong>AU Bắc Giang</strong>, chương trình học dành cho học sinh THCS được thiết kế với định hướng <strong>tối đa hoá năng lực</strong>, phát triển đều cả về kiến thức, kỹ năng và tư duy ngôn ngữ.</p><br><br><h1><strong>CÁC ĐẶC ĐIỂM NỔI BẬT CỦA LỘ TRÌNH</strong></h1><br><h2><strong>1. Xây nền tảng học thuật vững chắc</strong></h2><p><strong>Hệ thống từ vựng – ngữ pháp – phát âm</strong> được củng cố sâu, giúp học sinh hiểu rõ bản chất ngôn ngữ và ứng dụng thành thạo.</p><br><br><h2><strong>2. Phát triển toàn diện 4 kỹ năng (Nghe – Nói – Đọc – Viết)</strong></h2><p>Thông qua <strong>các chủ đề học thuật và tình huống thực tế</strong>, học sinh được rèn luyện đầy đủ kỹ năng, tạo nền tảng chuyển tiếp mượt mà lên <strong>chương trình IELTS</strong>.</p><br><br><h2><strong>3. Lồng ghép chiến lược làm bài IELTS từ sớm</strong></h2><p><strong>Các dạng bài đọc hiểu, viết luận và kỹ năng phản xạ</strong> được giới thiệu từng bước, giúp học sinh làm quen dần với cách tư duy và cấu trúc bài thi.</p><br><br><h2><strong>4. Học tập theo cấp độ Cambridge – Chuẩn hoá trình độ</strong></h2><p>Chương trình học được thiết kế theo <strong>hệ thống CEFR (A2–B1–B2)</strong>, giúp học sinh xác định rõ mục tiêu và theo dõi được tiến độ phát triển của bản thân.</p><br><br><h2><strong>5. Luyện phản xạ giao tiếp – Tư duy tiếng Anh</strong></h2><p><strong>Giáo viên nước ngoài đồng hành</strong> trong các buổi speaking chuyên biệt, giúp học sinh tự tin nói tiếng Anh và <strong>tư duy bằng tiếng Anh</strong> ngay từ giai đoạn THCS.</p><br><br><h2><strong>6. Theo dõi sát sao – Phản hồi kịp thời</strong></h2><p>Mỗi học sinh đều được <strong>theo dõi tiến độ cá nhân</strong>, nhận phản hồi thường xuyên từ giáo viên để kịp thời điều chỉnh phương pháp học phù hợp.</p><br><br><hr><br><h2><strong>KẾT LUẬN</strong></h2><p><strong>Lộ trình Tiếng Anh THCS tại AU Bắc Giang</strong> là sự chuẩn bị hoàn hảo giúp con <strong>tự tin bước vào chương trình IELTS ở cấp THPT</strong>, với nền tảng vững chắc và phương pháp học hiệu quả!</p>',
                'images' => '["\\/userfiles\\/images\\/R5AT3879.jpg","\\/userfiles\\/images\\/R5AT3898.jpg","\\/userfiles\\/images\\/R5AT3881.jpg"]',
                'youtube_review_link' => 'https://www.youtube.com/watch?v=2',
                'created_at' => '2025-07-21 03:53:45',
                'updated_at' => '2025-07-21 03:53:45',
            ],
        ]);

        // Seed 'menus' table based on provided JSON structure
        DB::table('menus')->insert([
            // Dynamic links from JSON
            [
                'id' => 2,
                'name' => 'Tin tức & Sự kiện',
                'url' => '/news', // Đã chuyển đổi thành URL tương đối
                'priority' => 2,
                'parent_id' => null,
                'created_at' => '2025-07-27 14:09:34',
                'updated_at' => '2025-07-28 02:21:26',
            ],
            [
                'id' => 10,
                'name' => 'Kiến thức và kinh nghiệm',
                'url' => '/news', // Đã chuyển đổi thành URL tương đối
                'priority' => 1,
                'parent_id' => 2,
                'created_at' => '2025-07-27 14:26:06',
                'updated_at' => '2025-07-28 02:22:05',
            ],
            [
                'id' => 3,
                'name' => 'Chương trình học',
                'url' => '/training', // Đã chuyển đổi thành URL tương đối
                'priority' => 3,
                'parent_id' => null,
                'created_at' => '2025-07-27 14:10:00',
                'updated_at' => '2025-07-28 02:22:26',
            ],
            [
                'id' => 7,
                'name' => 'Tiếng Anh Mẫu giáo',
                'url' => '/training', // Đã chuyển đổi thành URL tương đối
                'priority' => 1,
                'parent_id' => 3,
                'created_at' => '2025-07-27 14:23:40',
                'updated_at' => '2025-07-28 02:22:31',
            ],
            [
                'id' => 8,
                'name' => 'Tiếng Anh Tiểu học',
                'url' => '/training', // Đã chuyển đổi thành URL tương đối
                'priority' => 2,
                'parent_id' => 3,
                'created_at' => '2025-07-27 14:25:13',
                'updated_at' => '2025-07-28 02:22:36',
            ],
            [
                'id' => 9,
                'name' => 'Tiếng Anh THCS',
                'url' => '/training', // Đã chuyển đổi thành URL tương đối
                'priority' => 3,
                'parent_id' => 3,
                'created_at' => '2025-07-27 14:25:36',
                'updated_at' => '2025-07-28 02:22:42',
            ],
        ]);

        // Seed 'migrations' table (optional, Laravel handles migrations)
        DB::table('migrations')->insert([
            ['id' => 1, 'migration' => '0001_01_01_000000_create_users_table', 'batch' => 1],
            ['id' => 2, 'migration' => '0001_01_01_000001_create_cache_table', 'batch' => 1],
            ['id' => 3, 'migration' => '0001_01_01_000002_create_jobs_table', 'batch' => 1],
            ['id' => 4, 'migration' => '2025_03_26_142803_create_kingexpressbus_schemas', 'batch' => 1],
        ]);

        // Enable foreign key constraints after seeding
        Schema::enableForeignKeyConstraints();
    }
}
