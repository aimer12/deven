@echo off 
title ôô��
mode con  cols=50 lines=10 & color A
echo ��ʼ����������Ϣ����ʱ�ƻ�
echo �������ٷ����Ժ���Ϣ�أ���������������45��������Ŷ����
set/p option=���������:
goto deal

:deal
if "%option%" gtr "0" (if "%option%" lss "45" (goto clock) else goto time_too_long) else goto input_error

:time_too_long
echo Ҫ�������Ľ��飬����������������45���ӣ�
goto rechose

:input_error
echo ��Ҫ��Ϸ���ˣ�������������45��������Ŷ��
goto rechose

:clock
echo ��ʼΪ��������ʱ��������Ϣ��
ping -n 2 127.1>nul
if "%1" == "h" goto begin 
����mshta vbscript:createobject("wscript.shell").run("%~nx0 h",0)(window.close)&&exit 

:begin 
ping -n %option%*60 127.1>nul
mshta vbscript:createobject("sapi.spvoice").speak("����������Ҫ��Ϣһ����")(window.close)
mshta vbscript:msgbox("�����������Ϣһ����!",36,"���԰��������")(window.close)

:rechose
set/p option=��~������ʵĹ���ʱ��:
goto deal