@echo off
set porxy=12450
:run
cls
echo.
echo.���ƽⷽ���ڰ�׿7.0������������(iOS��װ�����ļ���ȫ�汾������)��������ǰ�׿7.0���ϣ���ο�:
echo.    �������1��ʹ�ð�׿7.0���°汾���ֻ���
echo.    �����ʽ2��Root�ֻ�����װ Xposed + JustTrustMe��
echo.    �����ʽ3����Root��ʹ�� VirtualXposed��̫���� + JustTrustMe����ʹ�ð�׿��ģ���� ��:VMOS�ȡ�
echo.
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
echo.
mitmdump.exe -s .\fcm.py --ssl-insecure -p %porxy% --no-http2 -q
