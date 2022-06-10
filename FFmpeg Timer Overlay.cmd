@echo off
cls
chcp 65001 > nul
set ffmpeg="D:\Downloads\ffmpeg-4.4.1-full_build\bin\ffmpeg.exe"
%ffmpeg% ^
	-i "%1" ^
	-vf "drawtext=eneble:fontfile=C:\Windows\Fonts\Arial.ttf:text='%%{pts\:gmtime\:0\:%%H\\\:%%M\\\:%%S}':x=w-tw:y=h-th:box=1:fontsize=(h/20):fontcolor=black@0.5:boxcolor=white@0.5" ^
"Timer_%~n1.mp4"
