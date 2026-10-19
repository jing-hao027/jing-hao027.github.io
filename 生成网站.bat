@echo off
cd /d "%~dp0"

rem ============================================
rem  双击这个文件：把网站生成到 docs 文件夹
rem  GitHub Pages 发布的就是这个 docs 文件夹
rem ============================================

if not exist "..\.tools\hugo\hugo.exe" (
  echo [错误] 找不到 Hugo 程序：..\.tools\hugo\hugo.exe
  pause
  exit /b 1
)

set "HUGO_CACHEDIR=%~dp0.cache"

echo.
echo 正在生成网站……
..\.tools\hugo\hugo.exe --gc --minify --cleanDestinationDir
if errorlevel 1 (
  echo.
  echo [失败] 生成网站时出错，请把上面的报错信息发给我。
  pause
  exit /b 1
)

echo.
echo [完成] 网站已生成到 mysite\docs 文件夹。
echo 详细步骤见同目录下的「发布指南.md」。
pause
