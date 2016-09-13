@echo off 
title 么么哒
mode con  cols=50 lines=10 & color A
echo 开始启动宝宝休息倒计时计划
echo 工作多少分钟以后休息呢？（宝宝建议输入45分钟以下哦！）
set/p option=输入分钟数:
goto deal

:deal
if "%option%" gtr "0" (if "%option%" lss "45" (goto clock) else goto time_too_long) else goto input_error

:time_too_long
echo 要听宝宝的建议，不能连续工作超过45分钟！
goto rechose

:input_error
echo 不要调戏我了，宝宝建议输入45分钟以下哦！
goto rechose

:clock
echo 开始为宝宝倒计时工作后休息！
ping -n 2 127.1>nul
if "%1" == "h" goto begin 
　　mshta vbscript:createobject("wscript.shell").run("%~nx0 h",0)(window.close)&&exit 

:begin 
ping -n %option%*60 127.1>nul
mshta vbscript:createobject("sapi.spvoice").speak("宝宝，你需要休息一下了")(window.close)
mshta vbscript:msgbox("宝宝，你该休息一下了!",36,"来自爱你的望望")(window.close)

:rechose
set/p option=乖~输入合适的工作时间:
goto deal