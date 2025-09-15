@echo off
echo 正在准备部署焗瓷修复大师游戏...
echo.

REM 检查是否安装了Git
git --version >nul 2>&1
if errorlevel 1 (
    echo 错误：未检测到Git，请先安装Git
    echo 下载地址：https://git-scm.com/download/win
    pause
    exit /b 1
)

echo 1. 初始化Git仓库...
git init

echo 2. 添加所有文件...
git add .

echo 3. 创建初始提交...
git commit -m "Initial commit: 焗瓷修复大师游戏"

echo.
echo 部署准备完成！
echo.
echo 接下来请按照以下步骤操作：
echo.
echo 1. 在GitHub上创建新仓库（建议命名：porcelain-restoration-game）
echo 2. 复制仓库的HTTPS地址
echo 3. 运行以下命令（替换YOUR_REPO_URL为你的仓库地址）：
echo    git remote add origin YOUR_REPO_URL
echo    git branch -M main
echo    git push -u origin main
echo.
echo 4. 在GitHub仓库设置中启用GitHub Pages
echo 5. 选择 "Deploy from a branch" 和 "main" 分支
echo.
echo 完成后，你的游戏将在以下地址可访问：
echo https://你的用户名.github.io/仓库名称
echo.
pause