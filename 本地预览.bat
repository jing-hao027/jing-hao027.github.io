@echo off
cd /d "%~dp0"

rem ============================================
rem  双击这个文件即可在本地预览网站
rem  预览期间这个黑窗口不要关；关闭窗口即结束
rem ============================================

if not exist "..\.tools\hugo\hugo.exe" (
  echo [错误] 找不到 Hugo 程序：..\.tools\hugo\hugo.exe
  echo 请确认 .tools 文件夹和 mysite 文件夹在同一个目录下。
  pause
  exit /b 1
)

echo.
echo 正在启动本地预览，几秒后会自动打开浏览器……
echo 网址：http://localhost:1313
echo 看完后关掉这个窗口即可。
echo.

start "" "http://localhost:1313"
..\.tools\hugo\hugo.exe server --port 1313 --bind 127.0.0.1 --buildDrafts

pause
