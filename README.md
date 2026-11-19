# DirectNotes

Ghi chú nội dung trực tiếp từ các phòng họp online theo thời gian thực. Bạn nói hoặc bật loa ngoài, lời thoại hiện ra thành từng đoạn ghi chú kèm mốc thời gian của cuộc họp.

Vì ứng dụng nghe qua micro nên dùng được với mọi cuộc họp hoặc video phát ra loa (Zoom, Google Meet, Microsoft Teams...).

## Tính năng

- Nhận giọng nói tiếng Việt hoặc English, hiển thị chữ ngay khi đang nói
- Mỗi đoạn có mốc thời gian tính từ lúc bắt đầu cuộc họp (ví dụ `00:59:34`)
- Tự nối lại mic khi bị ngắt (im lặng lâu, mất mạng, chuyển sang cửa sổ khác)
- Cửa sổ nổi luôn nằm trên các cửa sổ khác (Chrome/Edge 116 trở lên)
- Sửa hoặc xóa từng đoạn, gõ thêm ghi chú bằng tay
- Sao chép toàn bộ, hoặc tải về dạng `.md` hoặc `.txt`
- Ghi chú tự lưu trong trình duyệt, mở lại vẫn còn

## Cài đặt và sử dụng

1. Vào trang [Releases](https://github.com/ThuyNhanVP/DirectNotes/releases/latest) và tải `directnotes.zip`.
2. Giải nén, giữ 2 file chung một thư mục.
3. Bấm đúp `Open-DirectNotes.bat`. Ứng dụng mở trong cửa sổ nhỏ bằng Chrome hoặc Edge.
4. Bấm **Bắt đầu ghi** và cho phép micro khi trình duyệt hỏi.
5. Bấm **Cửa sổ nổi** để đặt ghi chú cạnh phòng họp.

Không dùng được file `.bat`? Mở thẳng `directnotes.html` bằng Chrome hoặc Edge, mọi tính năng vẫn chạy (chỉ không tự mở cửa sổ nhỏ).

## Yêu cầu

- Windows để dùng file `.bat` (file `.html` chạy trên mọi hệ điều hành có Chrome hoặc Edge)
- Chrome hoặc Edge
- Có kết nối mạng và micro

## Lưu ý

- **Chỉ nghe qua micro.** Muốn thu tiếng người khác từ cuộc họp hoặc video, hãy bật loa ngoài. Dùng tai nghe thì chỉ thu được giọng bạn.
- **Không ghi âm thành file.** Ứng dụng chỉ tạo ghi chú dạng chữ.
- **Quyền riêng tư.** Âm thanh được gửi tới dịch vụ nhận giọng nói của trình duyệt (Google với Chrome, Microsoft với Edge). Cân nhắc trước khi dùng cho cuộc họp có nội dung bảo mật.
- **Dữ liệu lưu trên máy bạn.** Ghi chú nằm trong trình duyệt, không gửi đi đâu khác. Hãy tải file về trước khi bấm **Cuộc họp mới** vì thao tác này xóa hết.
- Windows có thể hiện cảnh báo SmartScreen khi mở file `.bat` tải từ mạng. File chỉ có vài dòng, bạn có thể mở bằng Notepad để đọc trước.

## Xử lý sự cố

| Tình huống | Cách xử lý |
| --- | --- |
| Mic bị từ chối | Bấm biểu tượng khóa cạnh thanh địa chỉ, cho phép micro, rồi bấm lại **Bắt đầu ghi** |
| Không thấy nút **Cửa sổ nổi** | Cập nhật Chrome hoặc Edge lên bản 116 trở lên |
| Báo mất kết nối mạng | Kiểm tra mạng, ứng dụng sẽ tự thử lại |
| Nhận sai ngôn ngữ | Chọn lại ngôn ngữ trong ô bên cạnh nút **Bắt đầu ghi** |

## Cấu trúc

```
directnotes.html         Ứng dụng (một file, không cần cài thêm gì)
Open-DirectNotes.bat        Mở ứng dụng trong cửa sổ nhỏ bằng Chrome hoặc Edge
```
