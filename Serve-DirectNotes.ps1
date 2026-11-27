# Máy chủ cục bộ chỉ phục vụ directnotes.html tại http://localhost:47831/ để Chrome/Edge nhớ quyền mic.
# Tự thoát khi cửa sổ ứng dụng đóng (trang ngừng gửi /ping).
$port = 47831
$file = Join-Path (Split-Path -Parent $MyInvocation.MyCommand.Path) "directnotes.html"
$l = New-Object System.Net.HttpListener
$l.Prefixes.Add("http://localhost:$port/")
try { $l.Start() } catch { exit 0 }   # đã có bản khác đang chạy
$last = Get-Date
$task = $l.GetContextAsync()
while ($true) {
  if ($task.Wait(5000)) {
    $c = $task.Result
    $task = $l.GetContextAsync()
    $path = $c.Request.Url.AbsolutePath
    if ($path -eq "/ping") {
      $c.Response.StatusCode = 204
    } elseif ($path -eq "/" -or $path -eq "/directnotes.html") {
      $bytes = [IO.File]::ReadAllBytes($file)
      $c.Response.ContentType = "text/html; charset=utf-8"
      $c.Response.ContentLength64 = $bytes.Length
      $c.Response.OutputStream.Write($bytes, 0, $bytes.Length)
    } else {
      $c.Response.StatusCode = 404
    }
    $c.Response.Close()
    $last = Get-Date
  } elseif (((Get-Date) - $last).TotalSeconds -gt 180) { break }
}
$l.Stop()
