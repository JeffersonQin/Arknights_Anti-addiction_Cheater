@echo off
set porxy=12450
:run
cls
echo.�����ֻ���ģ����������������ã�
echo.1.ȷ���ֻ���ģ�����͵�����ͬһ�������¡�
echo.2.��������Ϸ��ʼ����ʱ�������²�������ֹ������Ϸ���¡�
echo.3.�����ֻ���ģ����WLAN(Wi-Fi)���������ֻ�����
echo.    ��׿���޸�����--�߼�ѡ��--����--�ֶ�
echo.    iOS��HTTP����--���ô���--�ֶ�
echo.        ������(���ڶ������ipʱ����������ֻ�ͬһ��������ip)��
for /f "delims=: tokens=2" %%i in ('ipconfig ^| find /i "IPv4"') do echo.        %%i 
echo.        �˿ڣ�%porxy%
echo.    ����/����
echo.4.������վhttp://mitm.it����֤��(iOSΪ�����ļ�)����װ��
echo.    iOS��һ��������--ͨ��--���ڱ���--֤����������--mitmproxy--��
echo.5.���½�����Ϸ��
echo.
pause
echo.
echo.����ctrl+c�ر��ƽ�
echo.��ʱ��mitmdump.exe�Ῠס����ʱ����ctrl+c��������ָ�(��ʱҪ��������ctrl+c�ر��ƽ�)��
mitmdump.exe -s .\fcm.py --ssl-insecure -p %porxy% --no-http2 -q
