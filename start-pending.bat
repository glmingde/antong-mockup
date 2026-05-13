@echo off
:: 启动本地 HTTP 服务（后台），然后打开极简窗口
start /B python -m http.server 8899 --directory "D:\AnTong_Leon\eas\desgin\antong-eas-prototype-base"
timeout /t 1 /nobreak >nul
start chrome --app="http://127.0.0.1:8899/pending-board.html" --window-size=1280,800 --disable-features=TranslateUI
