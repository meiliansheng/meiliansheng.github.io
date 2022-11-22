@ECHO OFF
SET TxtDir="%~dp0"
SET /A N=142
ECHO 删除行操作开始，请耐心等待。
ECHO 正在执行，请勿关闭本窗口。
ECHO ...
CD /D %TxtDir%
FOR /F "tokens=1 delims=" %%I IN ('DIR /A /B *.txt') DO ((MORE +%N% "%%I">"%%I_")&(DEL /A /F /Q "%%I")&(REN "%%I_" "%%I"))
ECHO 执行任务结束。
PAUSE