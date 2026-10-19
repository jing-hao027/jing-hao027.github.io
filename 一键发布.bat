@echo off
cd /d "%~dp0"

rem ============================================
rem  一键发布：生成网站 + 提交 + 推送到 GitHub
rem  第一次使用前，请先按「发布指南.md」完成第 1~3 步
rem ============================================

if not exist "..\.tools\hugo\hugo.exe" (
  echo [错误] 找不到 Hugo 程序：..\.tools\hugo\hugo.exe
  pause
  exit /b 1
)

echo.
echo [1/3] 正在生成网站……
..\.tools\hugo\hugo.exe --gc --minify
if errorlevel 1 (
  echo [失败] 生成出错，请把上面的报错信息发给我。
  pause
  exit /b 1
)

echo [2/3] 正在提交……
git add -A
git commit -m "update site"
if errorlevel 1 echo 没有新改动，跳过提交。

echo [3/3] 正在推送到 GitHub……
git push
if errorlevel 1 (
  echo.
  echo [失败] 推送失败。常见原因：
  echo   1. 还没设置远程仓库，请看「发布指南.md」第 2 步
  echo   2. 网络问题，稍后再试一次
  pause
  exit /b 1
)

echo.
echo [完成] 大约 1 分钟后网站更新，打开 https://jinghao027.github.io 看看。
pause
