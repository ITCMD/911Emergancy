REM   To Use With The Add to your script tool replace:
REM   call winhttpjs.bat "https://raw.githubusercontent.com/ITCMD/911Emergancy/master/911%20Tool%20by%20ITCMD.cmd" -saveto 911.bat >DLG.txt
REM   with call winhttpjs.bat "https://raw.githubusercontent.com/ITCMD/911Emergancy/master/911-WINDOWS-7.cmd" -saveto 911.bat >DLG.txt

@echo off
color 0f
title ITCMD 911 Kit
if not "%1"=="am_admin" (echo Loading . . . & echo %cd%>C:\users\Public\CDTT.txt & powershell start -verb runas '%0' am_admin & exit /b)
set /p cdd=<C:\users\Public\CDTT.txt
cd %cdd% 
cd %cdd% 
if "%cdd%"=="D:\ " D:
if "%cdd%"=="E:\ " E:
if "%cdd%"=="F:\ " F:
if "%cdd%"=="G:\ " G:
if "%cdd%"=="H:\ " H:
if "%cdd%"=="I:\ " I:
if "%cdd%"=="J:\ " J:
if not exist "Files\itcmd.txt" goto setup
:top
reg Query "HKLM\Hardware\Description\System\CentralProcessor\0" | find /i "x86" > NUL && set OS=32 || set OS=64
echo --------------------------------------------------------------------------------------------------------
type Files\ITCMD.txt
echo.  
echo.
echo                                              PLAN OF ACTION:
echo.
echo  Use RKill.exe (or if it doesnt work a renamed version of it).
echo     RKill is a tool that finds malware, and stops it from running. That way it cannot reinstall itself or copy itself
echo     any more.
echo.
echo  Use the Emsisoft Emergency Kit.
echo    Emsisoft is a free well known antivirus company. We will start the launcher that will install the tool,
echo    then we will run either the GUI interface that walks you through it and provides a more recent list, or,
echo    if that does not work we will launch the terminal version.
echo.
echo AGREEMENT
echo    By continuing you accept that any damage these tools cause by removing programs that trigger the malware
echo    warning, or by changing security settings, are not at the fault of ITCMD. Also note that RKill is made and
echo    distributed by BleepingComputer.com and that Emsisoft is created and distributed by Emsisoft.
echo.
echo To Get Started Press Y to agree to the statement.
choice /c "YN"
if %errorlevel%==2 exit
cls
echo Running Rkill.exe In a new window . . .  Let it do it's stuff.
start "" "Files\RKILL-Extensions\Rkill.exe"
echo.
cls
echo Did a message box pop up telling you that Rkill.exe could not be started?
echo If it did block it, press 1. If the tool ran, press 2
choice /c "12"
if %errorlevel%==1 start "" "Files\RKILL-Extensions\rkill.scr" & echo Launching Second Try
cls
echo That should have stopped any malware. 
echo If it did not work, the next step still can clean the infection, although we recommend running this tool twice.
echo.
echo ONCE RKILL IS COMPLETE OR IS ENABLING FIREWALL please press any key.
echo.
pause
echo We will now start the installation of the Emsisoft Emergancy Kit. (Press any Key to start)
pause
echo Running %OS% Bit kit.
start "" "Files\EEK\Bin%OS%\a2emergencykit.exe"
cls
echo Did a message box pop up telling you that EmsisoftEmergancyKit.exe could not be started?
echo Note: If you wish to use the command line version, close the Emsisoft window and press N.
echo If it did block it, press 1. If the tool ran fine (It should say "loading malware signatures"), press 2
choice /c "12"
if %errorlevel%==1 start "" "Files\ISCMD%OS%.cmd"
cls
echo  And thats it! These tools should take it from here! 
echo If this does not succeed in fixing your problems, please email Support@ITCommand.tech from an UNINFECTED DEVICE!
echo  Press any key to exit . . .
pause>nul
exit



:setup
echo Preparing to set up
goto :FileSetup
:BackFiles
echo Extraction Complete.
:loop
if exist done goto done
timeout /t 2>nul
goto loop
:done
del /f /q done
echo Extraction Completed.
timeout /t 2 >nul
cls
goto top

:FileSetup
if exist "ReadCompress.cmd" goto 224519838264413053665122064 
echo -----BEGIN CERTIFICATE----- >temp.txt 
( 
echo QGVjaG8gb2ZmDQp0aXRsZSBaSVAgU1RBVFVTDQpAbW9kZSBjb246IGNvbHM9NTBs 
echo aW5lcz0yDQo3emEgeCBGaWxlcy56aXAgLXkNCmVjaG8gG1s5Mm1Db21wbGV0ZWQu 
echo DQplY2hvIGRvbmU+ZG9uZQ0KdGltZW91dCAvdCAzID5udWwNCmV4aXQg 
echo -----END CERTIFICATE----- 
)>>temp.txt 
certutil -decode "temp.txt" "ReadCompress.cmd" >nul
del /f /q "temp.txt" 
:224519838264413053665122064 

if exist "winhttpjs.bat" goto 26561852823937251981271726892 
echo -----BEGIN CERTIFICATE----- >temp.txt 
( 
echo QGlmIChAWCkgPT0gKEBZKSBAZW5kIC8qIEpTY3JpcHQgY29tbWVudCANCiAgICAg 
echo ICAgQGVjaG8gb2ZmIA0KICAgICAgICANCiAgICAgICAgcmVtIDo6IHRoZSBmaXJz 
echo dCBhcmd1bWVudCBpcyB0aGUgc2NyaXB0IG5hbWUgYXMgaXQgd2lsbCBiZSB1c2Vk 
echo IGZvciBwcm9wZXIgaGVscCBtZXNzYWdlIA0KICAgICAgICBjc2NyaXB0IC8vRTpK 
echo U2NyaXB0IC8vbm9sb2dvICIlfmYwIiAiJX5ueDAiICUqIA0KDQogICAgICAgIGV4 
echo aXQgL2IgJWVycm9ybGV2ZWwlIA0KICAgICAgICANCkBpZiAoQFgpPT0oQFkpIEBl 
echo bmQgSlNjcmlwdCBjb21tZW50ICovDQoNCi8vIHVzZWQgcmVzb3VyY2VzDQoNCi8v 
echo IHVwZGF0ZSAxMi4xMC4xNSANCi8vIG9zdmlrdmkoaHR0cHM6Ly9naXRodWIuY29t 
echo L29zdmlrdmkpIGhhcyBub2RpdGVkIHRoYXQgdGhlIC1wYXNzd29yZCBvcHRpb24g 
echo aXMgbm90IHNldCAsIHNvIHRoaXMgaXMgZml4ZWQNCg0KLy9odHRwczovL21zZG4u 
echo bWljcm9zb2Z0LmNvbS9lbi11cy9saWJyYXJ5L3dpbmRvd3MvZGVza3RvcC9hYTM4 
echo NDA1OCh2PXZzLjg1KS5hc3B4IA0KLy9odHRwczovL21zZG4ubWljcm9zb2Z0LmNv 
echo bS9lbi11cy9saWJyYXJ5L3dpbmRvd3MvZGVza3RvcC9hYTM4NDA1NSh2PXZzLjg1 
echo KS5hc3B4IA0KLy9odHRwczovL21zZG4ubWljcm9zb2Z0LmNvbS9lbi11cy9saWJy 
echo YXJ5L3dpbmRvd3MvZGVza3RvcC9hYTM4NDA1OSh2PXZzLjg1KS5hc3B4IA0KDQov 
echo LyBnbG9iYWwgdmFyaWFibGVzIGFuZCBjb25zdGFudHMgDQoNCg0KLy8gLS0tLS0t 
echo LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSANCi8vIC0tIGFzeW5jaCByZXF1 
echo ZXN0cyBub3QgaW5jbHVkZWQgLS0gDQovLyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0t 
echo LS0tLS0tLS0tLS0tIA0KDQoNCi8vdG9kbyAtIHNhdmUgcmVzcG9uY2VTdHJlYW0g 
echo aW5zdGVhZCBvZiByZXNwb25jZUJvZHkgISEgDQovL3RvZG8gLSBzZXQgYWxsIHdp 
echo bnRodHRwIG9wdGlvbnMgLT4vL2h0dHBzOi8vbXNkbi5taWNyb3NvZnQuY29tL2Vu 
echo LXVzL2xpYnJhcnkvd2luZG93cy9kZXNrdG9wL2FhMzg0MTA4KHY9dnMuODUpLmFz 
echo cHggDQovL3RvZG8gLSBsb2cgYWxsIG9wdGlvbnMgDQovL3RvZG8gLSBpbXByb3Zl 
echo IGhlbHAgbWVzc2FnZSAuIGV2ZW50dWFsIHZlcmJvc2Ugb3B0aW9uIA0KDQoNCnZh 
echo ciBBUkdTID0gV1NjcmlwdC5Bcmd1bWVudHM7DQp2YXIgc2NyaXB0TmFtZSA9IEFS 
echo R1MuSXRlbSgwKTsNCg0KdmFyIHVybCA9ICIiOw0KdmFyIHNhdmVUbyA9ICIiOw0K 
echo DQp2YXIgdXNlciA9IDA7DQp2YXIgcGFzcyA9IDA7DQoNCnZhciBwcm94eSA9IDA7 
echo DQp2YXIgYnlwYXNzID0gMDsNCnZhciBwcm94eV91c2VyID0gMDsNCnZhciBwcm94 
echo eV9wYXNzID0gMDsNCg0KdmFyIGNlcnRpZmljYXRlID0gMDsNCg0KdmFyIGZvcmNl 
echo ID0gdHJ1ZTsNCg0KdmFyIGJvZHkgPSAiIjsNCg0KLy9BY3RpdmVYIG9iamVjdHMg 
echo DQp2YXIgV2luSFRUUE9iaiA9IG5ldyBBY3RpdmVYT2JqZWN0KCJXaW5IdHRwLldp 
echo bkh0dHBSZXF1ZXN0LjUuMSIpOw0KdmFyIEZpbGVTeXN0ZW1PYmogPSBuZXcgQWN0 
echo aXZlWE9iamVjdCgiU2NyaXB0aW5nLkZpbGVTeXN0ZW1PYmplY3QiKTsNCnZhciBB 
echo ZG9EQk9iaiA9IG5ldyBBY3RpdmVYT2JqZWN0KCJBRE9EQi5TdHJlYW0iKTsNCg0K 
echo Ly8gSHR0cFJlcXVlc3QgU2V0Q3JlZGVudGlhbHMgZmxhZ3MuIA0KdmFyIHByb3h5 
echo X3NldHRpbmdzID0gMDsNCg0KLy8gDQpIVFRQUkVRVUVTVF9TRVRDUkVERU5USUFM 
echo U19GT1JfU0VSVkVSID0gMDsNCkhUVFBSRVFVRVNUX1NFVENSRURFTlRJQUxTX0ZP 
echo Ul9QUk9YWSA9IDE7DQoNCi8vdGltZW91dHMgYW5kIHRoZWlyIGRlZmF1bHQgdmFs 
echo dWVzIA0KdmFyIFJFU09MVkVfVElNRU9VVCA9IDA7DQp2YXIgQ09OTkVDVF9USU1F 
echo T1VUID0gOTAwMDA7DQp2YXIgU0VORF9USU1FT1VUID0gOTAwMDA7DQp2YXIgUkVD 
echo RUlWRV9USU1FT1VUID0gOTAwMDA7DQoNCi8vSHR0cFJlcXVlc3RNZXRob2QgDQp2 
echo YXIgaHR0cF9tZXRob2QgPSAnR0VUJzsNCg0KLy9oZWFkZXIgDQp2YXIgaGVhZGVy 
echo X2ZpbGUgPSAiIjsNCg0KLy9yZXBvcnQgDQp2YXIgcmVwb3J0ZmlsZSA9ICIiOw0K 
echo DQovL3Rlc3QtdGhpczogDQp2YXIgdXNlX3N0cmVhbSA9IGZhbHNlOw0KDQovL2F1 
echo dG9sb2dvbiBwb2xpY3kgDQp2YXIgYXV0b2xvZ29uX3BvbGljeSA9IDE7IC8vMCwx 
echo LDIgDQoNCg0KLy9oZWFkZXJzIHdpbGwgYmUgc3RvcmVkIGFzIG11bHRpLWRpbWVu 
echo c2lvbmFsIGFycmF5IA0KdmFyIGhlYWRlcnMgPSBbXTsNCg0KLy91c2VyLWFnZW50 
echo IA0KdmFyIHVhID0gIiI7DQoNCi8vZXNjYXBlIFVSTCANCnZhciBlc2NhcGUgPSBm 
echo YWxzZTsNCg0KZnVuY3Rpb24gcHJpbnRIZWxwKCkgew0KICAgIFdTY3JpcHQuRWNo 
echo byhzY3JpcHROYW1lICsgIiAtIHNlbmRzIEhUVFAgcmVxdWVzdCBhbmQgc2F2ZXMg 
echo dGhlIHJlcXVlc3QgYm9keSBhcyBhIGZpbGUgYW5kL29yIGEgcmVwb3J0IG9mIHRo 
echo ZSBzZW50IHJlcXVlc3QiKTsNCiAgICBXU2NyaXB0LkVjaG8oc2NyaXB0TmFtZSAr 
echo ICIgdXJsICBbLWZvcmNlIHllc3xub10gWy11c2VyIHVzZXJuYW1lIC1wYXNzd29y 
echo ZCBwYXNzd29yZF0gWy1wcm94eSBwcm94eXNlcnZlcjpwb3J0XSBbLWJ5cGFzcyBi 
echo eXBhc3NfbGlzdF0iKTsNCiAgICBXU2NyaXB0LkVjaG8oIiAgICAgICAgICAgICAg 
echo ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgWy1wcm94 
echo eXVzZXIgcHJveHlfdXNlcm5hbWUgLXByb3h5cGFzc3dvcmQgcHJveHlfcGFzc3dv 
echo cmRdIFstY2VydGlmaWNhdGUgY2VydGlmaWNhdGVTdHJpbmddIik7DQogICAgV1Nj 
echo cmlwdC5FY2hvKCIgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg 
echo ICAgICAgICAgICAgICAgICAgIFstbWV0aG9kIEdFVHxQT1NUfFBBVENIfERFTEVU 
echo RXxIRUFEfE9QVElPTlN8Q09OTkVDVF0iKTsNCiAgICBXU2NyaXB0LkVjaG8oIiAg 
echo ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg 
echo ICAgICAgWy1zYXZlVG8gZmlsZV0gLSB0byBwcmludCByZXNwb25zZSB0byBjb25z 
echo b2xlIHVzZSBjb24iKTsNCg0KICAgIFdTY3JpcHQuRWNobygiICAgICAgICAgICAg 
echo ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBbLXNl 
echo bmRUaW1lb3V0IGludChtaWxsaXNlY29uZHMpXSIpOw0KICAgIFdTY3JpcHQuRWNo 
echo bygiICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg 
echo ICAgICAgICAgICBbLXJlc29sdmVUaW1lb3V0IGludChtaWxsaXNlY29uZHMpXSIp 
echo Ow0KICAgIFdTY3JpcHQuRWNobygiICAgICAgICAgICAgICAgICAgICAgICAgICAg 
echo ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBbLWNvbm5lY3RUaW1lb3V0IGlu 
echo dChtaWxsaXNlY29uZHMpXSIpOw0KICAgIFdTY3JpcHQuRWNobygiICAgICAgICAg 
echo ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBb 
echo LXJlY2VpdmVUaW1lb3V0IGludChtaWxsaXNlY29uZHMpXSIpOw0KDQogICAgV1Nj 
echo cmlwdC5FY2hvKCIgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg 
echo ICAgICAgICAgICAgICAgICAgIFstYXV0b2xvZ29uUG9saWN5IDF8MnwzXSIpOw0K 
echo ICAgIFdTY3JpcHQuRWNobygiICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg 
echo ICAgICAgICAgICAgICAgICAgICAgICAgICBbLXByb3h5U2V0dGluZ3MgMXwyfDNd 
echo IChodHRwczovL21zZG4ubWljcm9zb2Z0LmNvbS9lbi11cy9saWJyYXJ5L3dpbmRv 
echo d3MvZGVza3RvcC9hYTM4NDA1OSh2PXZzLjg1KS5hc3B4KSIpOw0KDQogICAgLy9o 
echo ZWFkZXIgDQogICAgV1NjcmlwdC5FY2hvKCIgICAgICAgICAgICAgICAgICAgICAg 
echo ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFstaGVhZGVycy1maWxl 
echo IGhlYWRlcl9maWxlXSIpOw0KICAgIC8vcmVwb3J0ZmlsZSANCiAgICBXU2NyaXB0 
echo LkVjaG8oIiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg 
echo ICAgICAgICAgICAgICAgWy1yZXBvcnRmaWxlIHJlcG9ydGZpbGVdIik7DQogICAg 
echo V1NjcmlwdC5FY2hvKCIgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg 
echo ICAgICAgICAgICAgICAgICAgICAgIFstdWEgdXNlci1hZ2VudF0iKTsNCiAgICBX 
echo U2NyaXB0LkVjaG8oIiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg 
echo ICAgICAgICAgICAgICAgICAgICAgWy11YS1maWxlIHVzZXItYWdlbnQtZmlsZV0i 
echo KTsNCg0KICAgIFdTY3JpcHQuRWNobygiICAgICAgICAgICAgICAgICAgICAgICAg 
echo ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBbLWVzY2FwZSB5ZXN8bm9d 
echo Iik7DQoNCiAgICBXU2NyaXB0LkVjaG8oIiAgICAgICAgICAgICAgICAgICAgICAg 
echo ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgWy1ib2R5IGJvZHktc3Ry 
echo aW5nXSIpOw0KICAgIFdTY3JpcHQuRWNobygiICAgICAgICAgICAgICAgICAgICAg 
echo ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBbLWJvZHktZmlsZSBi 
echo b2R5LWZpbGVdIik7DQoNCiAgICBXU2NyaXB0LkVjaG8oIi1mb3JjZSAgLSBkZWNp 
echo ZGUgdG8gbm90IG9yIHRvIG92ZXJ3cml0ZSBpZiB0aGUgbG9jYWwgZmlsZXMgZXhp 
echo c3RzIik7DQoNCiAgICBXU2NyaXB0LkVjaG8oInByb3h5c2VydmVyOnBvcnQgLSB0 
echo aGUgcHJveHkgc2VydmVyIik7DQogICAgV1NjcmlwdC5FY2hvKCJieXBhc3MtIGJ5 
echo cGFzcyBsaXN0Iik7DQogICAgV1NjcmlwdC5FY2hvKCJwcm94eV91c2VyICwgcHJv 
echo eHlfcGFzc3dvcmQgLSBjcmVkZW50aWFscyBmb3IgcHJveHkgc2VydmVyIik7DQog 
echo ICAgV1NjcmlwdC5FY2hvKCJ1c2VyICwgcGFzc3dvcmQgLSBjcmVkZW50aWFscyBm 
echo b3IgdGhlIHNlcnZlciIpOw0KICAgIFdTY3JpcHQuRWNobygiY2VydGlmaWNhdGUg 
echo LSBsb2NhdGlvbiBvZiBTU0wgY2VydGlmaWNhdGUiKTsNCiAgICBXU2NyaXB0LkVj 
echo aG8oIm1ldGhvZCAtIHdoYXQgSFRUUCBtZXRob2Qgd2lsbCBiZSB1c2VkLkRlZmF1 
echo bHQgaXMgR0VUIik7DQogICAgV1NjcmlwdC5FY2hvKCJzYXZlVG8gLSBzYXZlIHRo 
echo ZSByZXNwb25jZSBhcyBiaW5hcnkgZmlsZSIpOw0KICAgIFdTY3JpcHQuRWNobygi 
echo ICIpOw0KICAgIFdTY3JpcHQuRWNobygiSGVhZGVyIGZpbGUgc2hvdWxkIGNvbnRh 
echo aW4ga2V5OnZhbHVlIHBhaXJzLkxpbmVzIHN0YXJ0aW5nIHdpdGggXCIjXCIgd2ls 
echo bCBiZSBpZ25vcmVkLiIpOw0KICAgIFdTY3JpcHQuRWNobygidmFsdWUgc2hvdWxk 
echo IE5PVCBiZSBlbmNsb3NlZCB3aXRoIHF1b3RlcyIpOw0KICAgIFdTY3JpcHQuRWNo 
echo bygiICIpOw0KICAgIFdTY3JpcHQuRWNobygiRXhhbXBsZXM6Iik7DQoNCiAgICBX 
echo U2NyaXB0LkVjaG8oc2NyaXB0TmFtZSArICIgaHR0cDovL3NvbWVsaW5rLmNvbS9z 
echo b21lZmlsZS56aXAgLXNhdmVUbyBjOlxcc29tZWZpbGUuemlwIC1jZXJ0aWZpY2F0 
echo ZSBcIkxPQ0FMX01BQ0hJTkVcXFBlcnNvbmFsXFxNeSBNaWRkbGUtVGllciBDZXJ0 
echo aWZpY2F0ZVwiIik7DQogICAgV1NjcmlwdC5FY2hvKHNjcmlwdE5hbWUgKyAiIGh0 
echo dHA6Ly9zb21lbGluay5jb20vc29tZXRoaW5nLmh0bWwgIC1tZXRob2QgUE9TVCAg 
echo LWNlcnRpZmljYXRlIFwiTE9DQUxfTUFDSElORVxcUGVyc29uYWxcXE15IE1pZGRs 
echo ZS1UaWVyIENlcnRpZmljYXRlXCIgLWhlYWRlciBjOlxcaGVhZGVyX2ZpbGUgLXJl 
echo cG9ydGZpbGUgYzpcXHJlcG9ydGZpbGUudHh0Iik7DQogICAgV1NjcmlwdC5FY2hv 
echo KHNjcmlwdE5hbWUgKyAiXCJodHRwOi8vc29tZWxpbmtcIiAgLW1ldGhvZCBQT1NU 
echo ICAgLWhlYWRlciBoZHJzLnR4dCAtcmVwb3J0ZmlsZSByZXBvcnRmaWxlMi50eHQg 
echo LXNhdmVUbyByZXNwb25zZWZpbGUyIC11YSBcIk1vemlsbGEvNS4wIChXaW5kb3dz 
echo IE5UIDYuMSkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykg 
echo Q2hyb21lLzQxLjAuMjIyOC4wIFNhZmFyaS81MzcuMzZcIiAgLWJvZHktZmlsZSBz 
echo b21lLmpzb24iKTsNCg0KfQ0KDQpmdW5jdGlvbiBwYXJzZUFyZ3MoKSB7DQogICAg 
echo Ly8gDQogICAgaWYgKEFSR1MuTGVuZ3RoIDwgMikgew0KICAgICAgICBXU2NyaXB0 
echo LkVjaG8oImluc3VmZmljaWVudCBhcmd1bWVudHMiKTsNCiAgICAgICAgcHJpbnRI 
echo ZWxwKCk7DQogICAgICAgIFdTY3JpcHQuUXVpdCg0Myk7DQogICAgfQ0KICAgIC8v 
echo ICEhISANCiAgICB1cmwgPSBBUkdTLkl0ZW0oMSk7DQogICAgLy8gISEhIA0KICAg 
echo IGlmIChBUkdTLkxlbmd0aCAlIDIgIT0gMCkgew0KICAgICAgICBXU2NyaXB0LkVj 
echo aG8oImlsbGVnYWwgYXJndW1lbnRzIik7DQogICAgICAgIHByaW50SGVscCgpOw0K 
echo ICAgICAgICBXU2NyaXB0LlF1aXQoNDQpOw0KICAgIH0NCg0KICAgIGZvciAodmFy 
echo IGkgPSAyOyBpIDwgQVJHUy5MZW5ndGggLSAxOyBpID0gaSArIDIpIHsNCiAgICAg 
echo ICAgdmFyIGFyZyA9IEFSR1MuSXRlbShpKS50b0xvd2VyQ2FzZSgpOw0KICAgICAg 
echo ICB2YXIgbmV4dCA9IEFSR1MuSXRlbShpICsgMSk7DQoNCg0KICAgICAgICB0cnkg 
echo ew0KICAgICAgICAgICAgc3dpdGNoIChhcmcpIHsgLy8gdGhlIHRyeS1jYXRjaCBp 
echo cyBzZXQgbWFpbmx5IGJlY2F1c2Ugb2YgdGhlIHBhcnNlSW50cyANCiAgICAgICAg 
echo ICAgICAgICBjYXNlICItZm9yY2UiOg0KICAgICAgICAgICAgICAgICAgICBpZiAo 
echo bmV4dCA9PSAibm8iKSB7DQogICAgICAgICAgICAgICAgICAgICAgICBmb3JjZSA9 
echo IGZhbHNlOw0KICAgICAgICAgICAgICAgICAgICB9DQogICAgICAgICAgICAgICAg 
echo ICAgIGJyZWFrOw0KICAgICAgICAgICAgICAgIGNhc2UgIi1lc2NhcGUiOg0KICAg 
echo ICAgICAgICAgICAgICAgICBpZiAobmV4dCA9PSAieWVzIikgew0KICAgICAgICAg 
echo ICAgICAgICAgICAgICAgZXNjYXBlID0gdHJ1ZTsNCiAgICAgICAgICAgICAgICAg 
echo ICAgfQ0KICAgICAgICAgICAgICAgICAgICBicmVhazsNCiAgICAgICAgICAgICAg 
echo ICBjYXNlICItc2F2ZXRvIjoNCiAgICAgICAgICAgICAgICAgICAgc2F2ZVRvID0g 
echo bmV4dDsNCiAgICAgICAgICAgICAgICAgICAgYnJlYWs7DQogICAgICAgICAgICAg 
echo ICAgY2FzZSAiLXVzZXIiOg0KICAgICAgICAgICAgICAgIGNhc2UgIi11IjoNCiAg 
echo ICAgICAgICAgICAgICAgICAgdXNlciA9IG5leHQ7DQogICAgICAgICAgICAgICAg 
echo ICAgIGJyZWFrOw0KICAgICAgICAgICAgICAgIGNhc2UgIi1wYXNzIjoNCiAgICAg 
echo ICAgICAgICAgICBjYXNlICItcGFzc3dvcmQiOg0KICAgICAgICAgICAgICAgIGNh 
echo c2UgIi1wIjoNCiAgICAgICAgICAgICAgICAgICAgcGFzcyA9IG5leHQ7DQogICAg 
echo ICAgICAgICAgICAgICAgIGJyZWFrOw0KICAgICAgICAgICAgICAgIGNhc2UgIi1w 
echo cm94eSI6DQogICAgICAgICAgICAgICAgICAgIHByb3h5ID0gbmV4dDsNCiAgICAg 
echo ICAgICAgICAgICAgICAgYnJlYWs7DQogICAgICAgICAgICAgICAgY2FzZSAiLWJ5 
echo cGFzcyI6DQogICAgICAgICAgICAgICAgICAgIGJ5cGFzcyA9IG5leHQ7DQogICAg 
echo ICAgICAgICAgICAgICAgIGJyZWFrOw0KICAgICAgICAgICAgICAgIGNhc2UgIi1w 
echo cm94eXVzZXIiOg0KICAgICAgICAgICAgICAgIGNhc2UgIi1wdSI6DQogICAgICAg 
echo ICAgICAgICAgICAgIHByb3h5X3VzZXIgPSBuZXh0Ow0KICAgICAgICAgICAgICAg 
echo ICAgICBicmVhazsNCiAgICAgICAgICAgICAgICBjYXNlICItcHJveHlwYXNzd29y 
echo ZCI6DQogICAgICAgICAgICAgICAgY2FzZSAiLXBwIjoNCiAgICAgICAgICAgICAg 
echo ICAgICAgcHJveHlfcGFzcyA9IG5leHQ7DQogICAgICAgICAgICAgICAgICAgIGJy 
echo ZWFrOw0KICAgICAgICAgICAgICAgIGNhc2UgIi11YSI6DQogICAgICAgICAgICAg 
echo ICAgICAgIHVhID0gbmV4dDsNCiAgICAgICAgICAgICAgICAgICAgYnJlYWs7DQog 
echo ICAgICAgICAgICAgICAgY2FzZSAiLXVhLWZpbGUiOg0KICAgICAgICAgICAgICAg 
echo ICAgICB1YSA9IHJlYWRGaWxlKG5leHQpOw0KICAgICAgICAgICAgICAgICAgICBi 
echo cmVhazsNCiAgICAgICAgICAgICAgICBjYXNlICItYm9keSI6DQogICAgICAgICAg 
echo ICAgICAgICAgIGJvZHkgPSBuZXh0Ow0KICAgICAgICAgICAgICAgICAgICBicmVh 
echo azsNCiAgICAgICAgICAgICAgICBjYXNlICItdXNlc3RyZWFtIjoNCiAgICAgICAg 
echo ICAgICAgICAgICAgLy9XU2NyaXB0LkVjaG8oIn5+Iik7IA0KICAgICAgICAgICAg 
echo ICAgICAgICBpZiAobmV4dC50b0xvd2VyQ2FzZSgpID09PSAieWVzIikgew0KICAg 
echo ICAgICAgICAgICAgICAgICAgICAgdXNlX3N0cmVhbSA9IHRydWUNCiAgICAgICAg 
echo ICAgICAgICAgICAgfTsNCiAgICAgICAgICAgICAgICAgICAgYnJlYWs7DQogICAg 
echo ICAgICAgICAgICAgY2FzZSAiLWJvZHktZmlsZSI6DQogICAgICAgICAgICAgICAg 
echo ICAgIGJvZHkgPSByZWFkRmlsZShuZXh0KTsNCiAgICAgICAgICAgICAgICAgICAg 
echo YnJlYWs7DQogICAgICAgICAgICAgICAgY2FzZSAiLWNlcnRpZmljYXRlIjoNCiAg 
echo ICAgICAgICAgICAgICAgICAgY2VydGlmaWNhdGUgPSBuZXh0Ow0KICAgICAgICAg 
echo ICAgICAgICAgICBicmVhazsNCiAgICAgICAgICAgICAgICBjYXNlICItbWV0aG9k 
echo IjoNCiAgICAgICAgICAgICAgICAgICAgc3dpdGNoIChuZXh0LnRvTG93ZXJDYXNl 
echo KCkpIHsNCiAgICAgICAgICAgICAgICAgICAgICAgIGNhc2UgInBvc3QiOg0KICAg 
echo ICAgICAgICAgICAgICAgICAgICAgICAgIGh0dHBfbWV0aG9kID0gJ1BPU1QnOw0K 
echo ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOw0KICAgICAgICAgICAg 
echo ICAgICAgICAgICAgY2FzZSAiZ2V0IjoNCiAgICAgICAgICAgICAgICAgICAgICAg 
echo ICAgICBodHRwX21ldGhvZCA9ICdHRVQnOw0KICAgICAgICAgICAgICAgICAgICAg 
echo ICAgICAgIGJyZWFrOw0KICAgICAgICAgICAgICAgICAgICAgICAgY2FzZSAiaGVh 
echo ZCI6DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgaHR0cF9tZXRob2QgPSAn 
echo SEVBRCc7DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7DQogICAg 
echo ICAgICAgICAgICAgICAgICAgICBjYXNlICJwdXQiOg0KICAgICAgICAgICAgICAg 
echo ICAgICAgICAgICAgIGh0dHBfbWV0aG9kID0gJ1BVVCc7DQogICAgICAgICAgICAg 
echo ICAgICAgICAgICAgICAgYnJlYWs7DQogICAgICAgICAgICAgICAgICAgICAgICBj 
echo YXNlICJvcHRpb25zIjoNCiAgICAgICAgICAgICAgICAgICAgICAgICAgICBodHRw 
echo X21ldGhvZCA9ICdPUFRJT05TJzsNCiAgICAgICAgICAgICAgICAgICAgICAgICAg 
echo ICBicmVhazsNCiAgICAgICAgICAgICAgICAgICAgICAgIGNhc2UgImNvbm5lY3Qi 
echo Og0KICAgICAgICAgICAgICAgICAgICAgICAgICAgIGh0dHBfbWV0aG9kID0gJ0NP 
echo Tk5FQ1QnOw0KICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOw0KICAg 
echo ICAgICAgICAgICAgICAgICAgICAgY2FzZSAicGF0Y2giOg0KICAgICAgICAgICAg 
echo ICAgICAgICAgICAgICAgIGh0dHBfbWV0aG9kID0gJ1BBVENIJzsNCiAgICAgICAg 
echo ICAgICAgICAgICAgICAgICAgICBicmVhazsNCiAgICAgICAgICAgICAgICAgICAg 
echo ICAgIGNhc2UgImRlbGV0ZSI6DQogICAgICAgICAgICAgICAgICAgICAgICAgICAg 
echo aHR0cF9tZXRob2QgPSAnREVMRVRFJzsNCiAgICAgICAgICAgICAgICAgICAgICAg 
echo ICAgICBicmVhazsNCiAgICAgICAgICAgICAgICAgICAgICAgIGRlZmF1bHQ6DQog 
echo ICAgICAgICAgICAgICAgICAgICAgICAgICAgV1NjcmlwdC5FY2hvKCJJbnZhbGlk 
echo IGh0dHAgbWV0aG9kIHBhc3NlZCAiICsgbmV4dCk7DQogICAgICAgICAgICAgICAg 
echo ICAgICAgICAgICAgV1NjcmlwdC5FY2hvKCJwb3NzaWJsZSB2YWx1ZXMgYXJlIEdF 
echo VCxQT1NULERFTEVURSxQVVQsQ09OTkVDVCxQQVRDSCxIRUFELE9QVElPTlMiKTsN 
echo CiAgICAgICAgICAgICAgICAgICAgICAgICAgICBXU2NyaXB0LlF1aXQoMTMyNik7 
echo DQogICAgICAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7DQogICAgICAgICAg 
echo ICAgICAgICAgIH0NCiAgICAgICAgICAgICAgICAgICAgYnJlYWs7DQogICAgICAg 
echo ICAgICAgICAgY2FzZSAiLWhlYWRlcnMtZmlsZSI6DQogICAgICAgICAgICAgICAg 
echo Y2FzZSAiLWhlYWRlciI6DQogICAgICAgICAgICAgICAgICAgIGhlYWRlcnMgPSBy 
echo ZWFkUHJvcEZpbGUobmV4dCk7DQogICAgICAgICAgICAgICAgICAgIGJyZWFrOw0K 
echo ICAgICAgICAgICAgICAgIGNhc2UgIi1yZXBvcnRmaWxlIjoNCiAgICAgICAgICAg 
echo ICAgICAgICAgcmVwb3J0ZmlsZSA9IG5leHQ7DQogICAgICAgICAgICAgICAgICAg 
echo IGJyZWFrOw0KICAgICAgICAgICAgICAgICAgICAvL3RpbWVvdXRzIA0KICAgICAg 
echo ICAgICAgICAgIGNhc2UgIi1zZW5kdGltZW91dCI6DQogICAgICAgICAgICAgICAg 
echo ICAgIFNFTkRfVElNRU9VVCA9IHBhcnNlSW50KG5leHQpOw0KICAgICAgICAgICAg 
echo ICAgICAgICBicmVhazsNCiAgICAgICAgICAgICAgICBjYXNlICItY29ubmVjdHRp 
echo bWVvdXQiOg0KICAgICAgICAgICAgICAgICAgICBDT05ORUNUX1RJTUVPVVQgPSBw 
echo YXJzZWludChuZXh0KTsNCiAgICAgICAgICAgICAgICAgICAgYnJlYWs7DQogICAg 
echo ICAgICAgICAgICAgY2FzZSAiLXJlc29sdmV0aW1lb3V0IjoNCiAgICAgICAgICAg 
echo ICAgICAgICAgUkVTT0xWRV9USU1FT1VUID0gcGFyc2VJbnQobmV4dCk7DQogICAg 
echo ICAgICAgICAgICAgICAgIGJyZWFrOw0KICAgICAgICAgICAgICAgIGNhc2UgIi1y 
echo ZWNlaXZldGltZW91dCI6DQogICAgICAgICAgICAgICAgICAgIFJFQ0VJVkVfVElN 
echo RU9VVCA9IHBhcnNlSW50KG5leHQpOw0KICAgICAgICAgICAgICAgICAgICBicmVh 
echo azsNCg0KICAgICAgICAgICAgICAgIGNhc2UgIi1hdXRvbG9nb25wb2xpY3kiOg0K 
echo ICAgICAgICAgICAgICAgICAgICBhdXRvbG9nb25fcG9saWN5ID0gcGFyc2VJbnQo 
echo bmV4dCk7DQogICAgICAgICAgICAgICAgICAgIGlmIChhdXRvbG9nb25fcG9saWN5 
echo ID4gMiB8fCBhdXRvbG9nb25fcG9saWN5IDwgMCkgew0KICAgICAgICAgICAgICAg 
echo ICAgICAgICAgV1NjcmlwdC5FY2hvKCJvdXQgb2YgYXV0b2xvZ29uIHBvbGljeSBy 
echo YW5nZSIpOw0KICAgICAgICAgICAgICAgICAgICAgICAgV1NjcmlwdC5RdWl0KDg3 
echo KTsNCiAgICAgICAgICAgICAgICAgICAgfTsNCiAgICAgICAgICAgICAgICAgICAg 
echo YnJlYWs7DQogICAgICAgICAgICAgICAgY2FzZSAiLXByb3h5c2V0dGluZ3MiOg0K 
echo ICAgICAgICAgICAgICAgICAgICBwcm94eV9zZXR0aW5ncyA9IHBhcnNlSW50KG5l 
echo eHQpOw0KICAgICAgICAgICAgICAgICAgICBpZiAocHJveHlfc2V0dGluZ3MgPiAy 
echo IHx8IHByb3h5X3NldHRpbmdzIDwgMCkgew0KICAgICAgICAgICAgICAgICAgICAg 
echo ICAgV1NjcmlwdC5FY2hvKCJvdXQgb2YgcHJveHkgc2V0dGluZ3MgcmFuZ2UiKTsN 
echo CiAgICAgICAgICAgICAgICAgICAgICAgIFdTY3JpcHQuUXVpdCg4Nyk7DQogICAg 
echo ICAgICAgICAgICAgICAgIH07DQogICAgICAgICAgICAgICAgICAgIGJyZWFrOw0K 
echo ICAgICAgICAgICAgICAgIGRlZmF1bHQ6DQogICAgICAgICAgICAgICAgICAgIFdT 
echo Y3JpcHQuRWNobygiSW52YWxpZCAgY29tbWFuZCBsaW5lIHN3aXRjaDogIiArIGFy 
echo Zyk7DQogICAgICAgICAgICAgICAgICAgIFdTY3JpcHQuUXVpdCgxNDA1KTsNCiAg 
echo ICAgICAgICAgICAgICAgICAgYnJlYWs7DQogICAgICAgICAgICB9DQogICAgICAg 
echo IH0gY2F0Y2ggKGVycikgew0KICAgICAgICAgICAgV1NjcmlwdC5FY2hvKGVyci5t 
echo ZXNzYWdlKTsNCiAgICAgICAgICAgIFdTY3JpcHQuUXVpdCgxMzQ4KTsNCiAgICAg 
echo ICAgfQ0KICAgIH0NCn0NCg0Kc3RyaXBUcmFpbGluZ1NsYXNoID0gZnVuY3Rpb24o 
echo cGF0aCkgew0KICAgIHdoaWxlIChwYXRoLnN1YnN0cihwYXRoLmxlbmd0aCAtIDEs 
echo IHBhdGgubGVuZ3RoKSA9PSAnXFwnKSB7DQogICAgICAgIHBhdGggPSBwYXRoLnN1 
echo YnN0cigwLCBwYXRoLmxlbmd0aCAtIDEpOw0KICAgIH0NCiAgICByZXR1cm4gcGF0 
echo aDsNCn0NCg0KZnVuY3Rpb24gZXhpc3RzSXRlbShwYXRoKSB7DQogICAgcmV0dXJu 
echo IEZpbGVTeXN0ZW1PYmouRm9sZGVyRXhpc3RzKHBhdGgpIHx8IEZpbGVTeXN0ZW1P 
echo YmouRmlsZUV4aXN0cyhwYXRoKTsNCn0NCg0KZnVuY3Rpb24gZGVsZXRlSXRlbShw 
echo YXRoKSB7DQogICAgaWYgKEZpbGVTeXN0ZW1PYmouRmlsZUV4aXN0cyhwYXRoKSkg 
echo ew0KICAgICAgICBGaWxlU3lzdGVtT2JqLkRlbGV0ZUZpbGUocGF0aCk7DQogICAg 
echo ICAgIHJldHVybiB0cnVlOw0KICAgIH0gZWxzZSBpZiAoRmlsZVN5c3RlbU9iai5G 
echo b2xkZXJFeGlzdHMocGF0aCkpIHsNCiAgICAgICAgRmlsZVN5c3RlbU9iai5EZWxl 
echo dGVGb2xkZXIoc3RyaXBUcmFpbGluZ1NsYXNoKHBhdGgpKTsNCiAgICAgICAgcmV0 
echo dXJuIHRydWU7DQogICAgfSBlbHNlIHsNCiAgICAgICAgcmV0dXJuIGZhbHNlOw0K 
echo ICAgIH0NCn0NCg0KLy8tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tIA0K 
echo Ly8tLS0tLS0tLS0tLS0tLS0tLS0tLS0tIA0KLy8tLS0tLS0tLS0tIA0KLy8tLS0t 
echo LSANCi8vLS0gDQpmdW5jdGlvbiByZXF1ZXN0KHVybCkgew0KDQogICAgdHJ5IHsN 
echo Cg0KICAgICAgICBXaW5IVFRQT2JqLk9wZW4oaHR0cF9tZXRob2QsIHVybCwgZmFs 
echo c2UpOw0KICAgICAgICBpZiAocHJveHkgIT0gMCAmJiBieXBhc3MgIT0gMCkgew0K 
echo ICAgICAgICAgICAgV2luSFRUUE9iai5TZXRQcm94eShwcm94eV9zZXR0aW5ncywg 
echo cHJveHksIGJ5cGFzcyk7DQogICAgICAgIH0NCg0KICAgICAgICBpZiAocHJveHkg 
echo IT0gMCkgew0KICAgICAgICAgICAgV2luSFRUUE9iai5TZXRQcm94eShwcm94eV9z 
echo ZXR0aW5ncywgcHJveHkpOw0KICAgICAgICB9DQoNCiAgICAgICAgaWYgKHVzZXIg 
echo IT0gMCAmJiBwYXNzICE9IDApIHsNCiAgICAgICAgICAgIFdpbkhUVFBPYmouU2V0 
echo Q3JlZGVudGlhbHModXNlciwgcGFzcywgSFRUUFJFUVVFU1RfU0VUQ1JFREVOVElB 
echo TFNfRk9SX1NFUlZFUik7DQogICAgICAgIH0NCg0KICAgICAgICBpZiAocHJveHlf 
echo dXNlciAhPSAwICYmIHByb3h5X3Bhc3MgIT0gMCkgew0KICAgICAgICAgICAgV2lu 
echo SFRUUE9iai5TZXRDcmVkZW50aWFscyhwcm94eV91c2VyLCBwcm94eV9wYXNzLCBI 
echo VFRQUkVRVUVTVF9TRVRDUkVERU5USUFMU19GT1JfUFJPWFkpOw0KICAgICAgICB9 
echo DQoNCiAgICAgICAgaWYgKGNlcnRpZmljYXRlICE9IDApIHsNCiAgICAgICAgICAg 
echo IFdpbkhUVFBPYmouU2V0Q2xpZW50Q2VydGlmaWNhdGUoY2VydGlmaWNhdGUpOw0K 
echo ICAgICAgICB9DQoNCiAgICAgICAgLy9zZXQgYXV0b2xvZ2luIHBvbGljeSANCiAg 
echo ICAgICAgV2luSFRUUE9iai5TZXRBdXRvTG9nb25Qb2xpY3koYXV0b2xvZ29uX3Bv 
echo bGljeSk7DQogICAgICAgIC8vc2V0IHRpbWVvdXRzIA0KICAgICAgICBXaW5IVFRQ 
echo T2JqLlNldFRpbWVvdXRzKFJFU09MVkVfVElNRU9VVCwgQ09OTkVDVF9USU1FT1VU 
echo LCBTRU5EX1RJTUVPVVQsIFJFQ0VJVkVfVElNRU9VVCk7DQoNCiAgICAgICAgaWYg 
echo KGhlYWRlcnMubGVuZ3RoICE9PSAwKSB7DQogICAgICAgICAgICBXU2NyaXB0LkVj 
echo aG8oIlNlbmRpbmcgd2l0aCBoZWFkZXJzOiIpOw0KICAgICAgICAgICAgZm9yICh2 
echo YXIgaSA9IDA7IGkgPCBoZWFkZXJzLmxlbmd0aDsgaSsrKSB7DQogICAgICAgICAg 
echo ICAgICAgV2luSFRUUE9iai5TZXRSZXF1ZXN0SGVhZGVyKGhlYWRlcnNbaV1bMF0s 
echo IGhlYWRlcnNbaV1bMV0pOw0KICAgICAgICAgICAgICAgIFdTY3JpcHQuRWNobyho 
echo ZWFkZXJzW2ldWzBdICsgIjoiICsgaGVhZGVyc1tpXVsxXSk7DQogICAgICAgICAg 
echo ICB9DQogICAgICAgICAgICBXU2NyaXB0LkVjaG8oIiIpOw0KICAgICAgICB9DQoN 
echo CiAgICAgICAgaWYgKHVhICE9PSAiIikgew0KICAgICAgICAgICAgLy91c2VyLWFn 
echo ZW50IG9wdGlvbiBmcm9tOiANCiAgICAgICAgICAgIC8vV2luSHR0cFJlcXVlc3RP 
echo cHRpb24gZW51bWVyYXRpb24gDQogICAgICAgICAgICAvLyBvdGhlciBvcHRpb25z 
echo IGNhbiBiZSBhZGRlZCBsaWtlIGJlbGxvdyANCiAgICAgICAgICAgIC8vaHR0cHM6 
echo Ly9tc2RuLm1pY3Jvc29mdC5jb20vZW4tdXMvbGlicmFyeS93aW5kb3dzL2Rlc2t0 
echo b3AvYWEzODQxMDgodj12cy44NSkuYXNweCANCiAgICAgICAgICAgIFdpbkhUVFBP 
echo YmouT3B0aW9uKDApID0gdWE7DQogICAgICAgIH0NCiAgICAgICAgaWYgKGVzY2Fw 
echo ZSkgew0KICAgICAgICAgICAgV2luSFRUUE9iai5PcHRpb24oMykgPSB0cnVlOw0K 
echo ICAgICAgICB9DQogICAgICAgIGlmICh0cmltKGJvZHkpID09PSAiIikgew0KICAg 
echo ICAgICAgICAgV2luSFRUUE9iai5TZW5kKCk7DQogICAgICAgIH0gZWxzZSB7DQog 
echo ICAgICAgICAgICBXaW5IVFRQT2JqLlNlbmQoYm9keSk7DQogICAgICAgIH0NCg0K 
echo ICAgICAgICB2YXIgc3RhdHVzID0gV2luSFRUUE9iai5TdGF0dXMNCiAgICB9IGNh 
echo dGNoIChlcnIpIHsNCiAgICAgICAgV1NjcmlwdC5FY2hvKGVyci5tZXNzYWdlKTsN 
echo CiAgICAgICAgV1NjcmlwdC5RdWl0KDY2Nik7DQogICAgfQ0KDQogICAgLy8vLy8v 
echo Ly8vLy8vLy8vLy8vLy8vLy8vIA0KICAgIC8vICAgICByZXBvcnQgICAgICAgICAv 
echo LyANCiAgICAvLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8gDQoNCiAgICBpZiAocmVw 
echo b3J0ZmlsZSAhPSAiIikgew0KDQogICAgICAgIC8vdmFyIHJlcG9ydF9zdHJpbmc9 
echo IiI7IA0KICAgICAgICB2YXIgbiA9ICJcclxuIjsNCiAgICAgICAgdmFyIHJlcG9y 
echo dF9zdHJpbmcgPSAiU3RhdHVzOiIgKyBuOw0KICAgICAgICByZXBvcnRfc3RyaW5n 
echo ID0gcmVwb3J0X3N0cmluZyArICIgICAgICAiICsgV2luSFRUUE9iai5TdGF0dXM7 
echo DQogICAgICAgIHJlcG9ydF9zdHJpbmcgPSByZXBvcnRfc3RyaW5nICsgIiAgICAg 
echo ICIgKyBXaW5IVFRQT2JqLlN0YXR1c1RleHQgKyBuOw0KICAgICAgICByZXBvcnRf 
echo c3RyaW5nID0gcmVwb3J0X3N0cmluZyArICIgICAgICAiICsgbjsNCiAgICAgICAg 
echo cmVwb3J0X3N0cmluZyA9IHJlcG9ydF9zdHJpbmcgKyAiUmVzcG9uc2U6IiArIG47 
echo DQogICAgICAgIHJlcG9ydF9zdHJpbmcgPSByZXBvcnRfc3RyaW5nICsgV2luSFRU 
echo UE9iai5SZXNwb25zZVRleHQgKyBuOw0KICAgICAgICByZXBvcnRfc3RyaW5nID0g 
echo cmVwb3J0X3N0cmluZyArICIgICAgICAiICsgbjsNCiAgICAgICAgcmVwb3J0X3N0 
echo cmluZyA9IHJlcG9ydF9zdHJpbmcgKyAiSGVhZGVyczoiICsgbjsNCiAgICAgICAg 
echo cmVwb3J0X3N0cmluZyA9IHJlcG9ydF9zdHJpbmcgKyBXaW5IVFRQT2JqLkdldEFs 
echo bFJlc3BvbnNlSGVhZGVycygpICsgbjsNCg0KICAgICAgICBXaW5IdHRwUmVxdWVz 
echo dE9wdGlvbl9Vc2VyQWdlbnRTdHJpbmcgPSAwOyAvLyBOYW1lIG9mIHRoZSB1c2Vy 
echo IGFnZW50IA0KICAgICAgICBXaW5IdHRwUmVxdWVzdE9wdGlvbl9VUkwgPSAxOyAv 
echo LyBDdXJyZW50IFVSTCANCiAgICAgICAgV2luSHR0cFJlcXVlc3RPcHRpb25fVVJM 
echo Q29kZVBhZ2UgPSAyOyAvLyBDb2RlIHBhZ2UgDQogICAgICAgIFdpbkh0dHBSZXF1 
echo ZXN0T3B0aW9uX0VzY2FwZVBlcmNlbnRJblVSTCA9IDM7IC8vIENvbnZlcnQgcGVy 
echo Y2VudHMgDQogICAgICAgIC8vIGluIHRoZSBVUkwgDQogICAgICAgIC8vIHJlc3Qg 
echo b2YgdGhlIG9wdGlvbnMgY2FuIGJlIHNlZW4gYW5kIGV2ZW50dWFsbHkgYWRkZWQg 
echo dXNpbmcgdGhpcyBhcyByZWZlcmVuY2UgDQogICAgICAgIC8vIGh0dHBzOi8vbXNk 
echo bi5taWNyb3NvZnQuY29tL2VuLXVzL2xpYnJhcnkvd2luZG93cy9kZXNrdG9wL2Fh 
echo Mzg0MTA4KHY9dnMuODUpLmFzcHggDQoNCiAgICAgICAgcmVwb3J0X3N0cmluZyA9 
echo IHJlcG9ydF9zdHJpbmcgKyAiVVJMOiIgKyBuOw0KICAgICAgICByZXBvcnRfc3Ry 
echo aW5nID0gcmVwb3J0X3N0cmluZyArIFdpbkhUVFBPYmouT3B0aW9uKFdpbkh0dHBS 
echo ZXF1ZXN0T3B0aW9uX1VSTCkgKyBuOw0KDQogICAgICAgIHJlcG9ydF9zdHJpbmcg 
echo PSByZXBvcnRfc3RyaW5nICsgIlVSTCBDb2RlIFBhZ2U6IiArIG47DQogICAgICAg 
echo IHJlcG9ydF9zdHJpbmcgPSByZXBvcnRfc3RyaW5nICsgV2luSFRUUE9iai5PcHRp 
echo b24oV2luSHR0cFJlcXVlc3RPcHRpb25fVVJMQ29kZVBhZ2UpICsgbjsNCg0KICAg 
echo ICAgICByZXBvcnRfc3RyaW5nID0gcmVwb3J0X3N0cmluZyArICJVc2VyIEFnZW50 
echo OiIgKyBuOw0KICAgICAgICByZXBvcnRfc3RyaW5nID0gcmVwb3J0X3N0cmluZyAr 
echo IFdpbkhUVFBPYmouT3B0aW9uKFdpbkh0dHBSZXF1ZXN0T3B0aW9uX1VzZXJBZ2Vu 
echo dFN0cmluZykgKyBuOw0KDQogICAgICAgIHJlcG9ydF9zdHJpbmcgPSByZXBvcnRf 
echo c3RyaW5nICsgIkVzY2FwcGVkIFVSTDoiICsgbjsNCiAgICAgICAgcmVwb3J0X3N0 
echo cmluZyA9IHJlcG9ydF9zdHJpbmcgKyBXaW5IVFRQT2JqLk9wdGlvbihXaW5IdHRw 
echo UmVxdWVzdE9wdGlvbl9Fc2NhcGVQZXJjZW50SW5VUkwpICsgbjsNCg0KICAgICAg 
echo ICBwcmVwYXJlYXRlRmlsZShmb3JjZSwgcmVwb3J0ZmlsZSk7DQoNCiAgICAgICAg 
echo V1NjcmlwdC5FY2hvKCJXcml0aW5nIHJlcG9ydCB0byAiICsgcmVwb3J0ZmlsZSk7 
echo DQoNCiAgICAgICAgd3JpdGVGaWxlKHJlcG9ydGZpbGUsIHJlcG9ydF9zdHJpbmcp 
echo Ow0KDQogICAgfQ0KDQogICAgc3dpdGNoIChzdGF0dXMpIHsNCiAgICAgICAgY2Fz 
echo ZSAyMDA6DQogICAgICAgICAgICBXU2NyaXB0LkVjaG8oIlN0YXR1czogMjAwIE9L 
echo Iik7DQogICAgICAgICAgICBicmVhazsNCiAgICAgICAgZGVmYXVsdDoNCiAgICAg 
echo ICAgICAgIFdTY3JpcHQuRWNobygiU3RhdHVzOiAiICsgc3RhdHVzKTsNCiAgICAg 
echo ICAgICAgIFdTY3JpcHQuRWNobygiU3RhdHVzIHdhcyBub3QgT0suIE1vcmUgaW5m 
echo byAtPiBodHRwczovL2VuLndpa2lwZWRpYS5vcmcvd2lraS9MaXN0X29mX0hUVFBf 
echo c3RhdHVzX2NvZGVzIik7DQogICAgfQ0KDQogICAgLy9pZiBhcyBiaW5hcnkgDQog 
echo ICAgaWYgKHNhdmVUby50b0xvd2VyQ2FzZSgpID09PSAiY29uIikgew0KICAgICAg 
echo ICBXU2NyaXB0LkVjaG8oV2luSFRUUE9iai5SZXNwb25zZVRleHQpOw0KICAgIH0N 
echo CiAgICBpZiAoc2F2ZVRvICE9PSAiIiAmJiBzYXZlVG8udG9Mb3dlckNhc2UoKSAh 
echo PT0gImNvbiIpIHsNCiAgICAgICAgcHJlcGFyZWF0ZUZpbGUoZm9yY2UsIHNhdmVU 
echo byk7DQogICAgICAgIHRyeSB7DQoNCiAgICAgICAgICAgIGlmICh1c2Vfc3RyZWFt 
echo KSB7DQogICAgICAgICAgICAgICAgd3JpdGVCaW5GaWxlKHNhdmVUbywgV2luSFRU 
echo UE9iai5SZXNwb25zZVN0cmVhbSk7DQogICAgICAgICAgICB9IGVsc2Ugew0KICAg 
echo ICAgICAgICAgICAgIHdyaXRlQmluRmlsZShzYXZlVG8sIFdpbkhUVFBPYmouUmVz 
echo cG9uc2VCb2R5KTsNCiAgICAgICAgICAgIH0NCg0KICAgICAgICB9IGNhdGNoIChl 
echo cnIpIHsNCiAgICAgICAgICAgIFdTY3JpcHQuRWNobygiRmFpbGVkIHRvIHNhdmUg 
echo dGhlIGZpbGUgYXMgYmluYXJ5LkF0dGVtcHQgdG8gc2F2ZSBpdCBhcyB0ZXh0Iik7 
echo DQogICAgICAgICAgICBBZG9EQk9iai5DbG9zZSgpOw0KICAgICAgICAgICAgcHJl 
echo cGFyZWF0ZUZpbGUodHJ1ZSwgc2F2ZVRvKTsNCiAgICAgICAgICAgIHdyaXRlRmls 
echo ZShzYXZlVG8sIFdpbkhUVFBPYmouUmVzcG9uc2VUZXh0KTsNCiAgICAgICAgfQ0K 
echo ICAgIH0NCiAgICBXU2NyaXB0LlF1aXQoc3RhdHVzKTsNCn0NCg0KLy8tLSANCi8v 
echo LS0tLS0gDQovLy0tLS0tLS0tLS0gDQovLy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0g 
echo DQovLy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0gDQoNCmZ1bmN0aW9u 
echo IHByZXBhcmVhdGVGaWxlKGZvcmNlLCBmaWxlKSB7DQogICAgaWYgKGZvcmNlICYm 
echo IGV4aXN0c0l0ZW0oZmlsZSkpIHsNCiAgICAgICAgaWYgKCFkZWxldGVJdGVtKGZp 
echo bGUpKSB7DQogICAgICAgICAgICBXU2NyaXB0LkVjaG8oIlVuYWJsZSB0byBkZWxl 
echo dGUgIiArIGZpbGUpOw0KICAgICAgICAgICAgV1NjcmlwdC5RdWl0KDgpOw0KICAg 
echo ICAgICB9DQogICAgfSBlbHNlIGlmIChleGlzdHNJdGVtKGZpbGUpKSB7DQogICAg 
echo ICAgIFdTY3JpcHQuRWNobygiSXRlbSAiICsgZmlsZSArICIgYWxyZWFkeSBleGlz 
echo dCIpOw0KICAgICAgICBXU2NyaXB0LlF1aXQoOSk7DQogICAgfQ0KfQ0KDQpmdW5j 
echo dGlvbiB3cml0ZUJpbkZpbGUoZmlsZU5hbWUsIGRhdGEpIHsNCiAgICBBZG9EQk9i 
echo ai5UeXBlID0gMTsNCiAgICBBZG9EQk9iai5PcGVuKCk7DQogICAgQWRvREJPYmou 
echo UG9zaXRpb24gPSAwOw0KICAgIEFkb0RCT2JqLldyaXRlKGRhdGEpOw0KICAgIEFk 
echo b0RCT2JqLlNhdmVUb0ZpbGUoZmlsZU5hbWUsIDIpOw0KICAgIEFkb0RCT2JqLkNs 
echo b3NlKCk7DQp9DQoNCmZ1bmN0aW9uIHdyaXRlRmlsZShmaWxlTmFtZSwgZGF0YSkg 
echo ew0KICAgIEFkb0RCT2JqLlR5cGUgPSAyOw0KICAgIEFkb0RCT2JqLkNoYXJTZXQg 
echo PSAiaXNvLTg4NTktMSI7DQogICAgQWRvREJPYmouT3BlbigpOw0KICAgIEFkb0RC 
echo T2JqLlBvc2l0aW9uID0gMDsNCiAgICBBZG9EQk9iai5Xcml0ZVRleHQoZGF0YSk7 
echo DQogICAgQWRvREJPYmouU2F2ZVRvRmlsZShmaWxlTmFtZSwgMik7DQogICAgQWRv 
echo REJPYmouQ2xvc2UoKTsNCn0NCg0KDQpmdW5jdGlvbiByZWFkRmlsZShmaWxlTmFt 
echo ZSkgew0KICAgIC8vY2hlY2sgZXhpc3RlbmNlIA0KICAgIHRyeSB7DQogICAgICAg 
echo IGlmICghRmlsZVN5c3RlbU9iai5GaWxlRXhpc3RzKGZpbGVOYW1lKSkgew0KICAg 
echo ICAgICAgICAgV1NjcmlwdC5FY2hvKCJmaWxlICIgKyBmaWxlTmFtZSArICIgZG9l 
echo cyBub3QgZXhpc3QhIik7DQogICAgICAgICAgICBXU2NyaXB0LlF1aXQoMTMpOw0K 
echo ICAgICAgICB9DQogICAgICAgIGlmIChGaWxlU3lzdGVtT2JqLkdldEZpbGUoZmls 
echo ZU5hbWUpLlNpemUgPT09IDApIHsNCiAgICAgICAgICAgIHJldHVybiAiIjsNCiAg 
echo ICAgICAgfQ0KICAgICAgICB2YXIgZmlsZVIgPSBGaWxlU3lzdGVtT2JqLk9wZW5U 
echo ZXh0RmlsZShmaWxlTmFtZSwgMSk7DQogICAgICAgIHZhciBjb250ZW50ID0gZmls 
echo ZVIuUmVhZEFsbCgpOw0KICAgICAgICBmaWxlUi5DbG9zZSgpOw0KICAgICAgICBy 
echo ZXR1cm4gY29udGVudDsNCiAgICB9IGNhdGNoIChlcnIpIHsNCiAgICAgICAgV1Nj 
echo cmlwdC5FY2hvKCJFcnJvciB3aGlsZSByZWFkaW5nIGZpbGU6ICIgKyBmaWxlTmFt 
echo ZSk7DQogICAgICAgIFdTY3JpcHQuRWNobyhlcnIubWVzc2FnZSk7DQogICAgICAg 
echo IFdTY3JpcHQuRWNobygiV2lsbCByZXR1cm4gZW1wdHkgc3RyaW5nIik7DQogICAg 
echo ICAgIHJldHVybiAiIjsNCiAgICB9DQp9DQoNCmZ1bmN0aW9uIHJlYWRQcm9wRmls 
echo ZShmaWxlTmFtZSkgew0KICAgIC8vY2hlY2sgZXhpc3RlbmNlIA0KICAgIHJlc3Vs 
echo dEFycmF5ID0gW107DQogICAgaWYgKCFGaWxlU3lzdGVtT2JqLkZpbGVFeGlzdHMo 
echo ZmlsZU5hbWUpKSB7DQogICAgICAgIFdTY3JpcHQuRWNobygiKGhlYWRlcnMpZmls 
echo ZSAiICsgZmlsZU5hbWUgKyAiIGRvZXMgbm90IGV4aXN0ISIpOw0KICAgICAgICBX 
echo U2NyaXB0LlF1aXQoMTUpOw0KICAgIH0NCiAgICBpZiAoRmlsZVN5c3RlbU9iai5H 
echo ZXRGaWxlKGZpbGVOYW1lKS5TaXplID09PSAwKSB7DQogICAgICAgIHJldHVybiBy 
echo ZXN1bHRBcnJheTsNCiAgICB9DQogICAgdmFyIGZpbGVSID0gRmlsZVN5c3RlbU9i 
echo ai5PcGVuVGV4dEZpbGUoZmlsZU5hbWUsIDEpOw0KICAgIHZhciBsaW5lID0gIiI7 
echo DQogICAgdmFyIGsgPSAiIjsNCiAgICB2YXIgdiA9ICIiOw0KICAgIHZhciBsaW5l 
echo TiA9IDA7DQogICAgdmFyIGluZGV4ID0gMDsNCiAgICB0cnkgew0KICAgICAgICBX 
echo U2NyaXB0LkVjaG8oInBhcnNpbmcgaGVhZGVycyBmb3JtICIgKyBmaWxlTmFtZSAr 
echo ICIgcHJvcGVydHkgZmlsZSAiKTsNCiAgICAgICAgd2hpbGUgKCFmaWxlUi5BdEVu 
echo ZE9mU3RyZWFtKSB7DQogICAgICAgICAgICBsaW5lID0gZmlsZVIuUmVhZExpbmUo 
echo KTsNCiAgICAgICAgICAgIGxpbmVOKys7DQogICAgICAgICAgICBpbmRleCA9IGxp 
echo bmUuaW5kZXhPZigiOiIpOw0KICAgICAgICAgICAgaWYgKGxpbmUuaW5kZXhPZigi 
echo IyIpID09PSAwIHx8IHRyaW0obGluZSkgPT09ICIiKSB7DQogICAgICAgICAgICAg 
echo ICAgY29udGludWU7DQogICAgICAgICAgICB9DQogICAgICAgICAgICBpZiAoaW5k 
echo ZXggPT09IC0xIHx8IGluZGV4ID09PSBsaW5lLmxlbmd0aCAtIDEgfHwgaW5kZXgg 
echo PT09IDApIHsNCiAgICAgICAgICAgICAgICBXU2NyaXB0LkVjaG8oIkludmFsaWQg 
echo bGluZSAiICsgbGluZU4pOw0KICAgICAgICAgICAgICAgIFdTY3JpcHQuUXVpdCg5 
echo Myk7DQogICAgICAgICAgICB9DQogICAgICAgICAgICBrID0gdHJpbShsaW5lLnN1 
echo YnN0cmluZygwLCBpbmRleCkpOw0KICAgICAgICAgICAgdiA9IHRyaW0obGluZS5z 
echo dWJzdHJpbmcoaW5kZXggKyAxLCBsaW5lLmxlbmd0aCkpOw0KICAgICAgICAgICAg 
echo cmVzdWx0QXJyYXkucHVzaChbaywgdl0pOw0KICAgICAgICB9DQogICAgICAgIGZp 
echo bGVSLkNsb3NlKCk7DQogICAgICAgIHJldHVybiByZXN1bHRBcnJheTsNCiAgICB9 
echo IGNhdGNoIChlcnIpIHsNCiAgICAgICAgV1NjcmlwdC5FY2hvKCJFcnJvciB3aGls 
echo ZSByZWFkaW5nIGhlYWRlcnMgZmlsZTogIiArIGZpbGVOYW1lKTsNCiAgICAgICAg 
echo V1NjcmlwdC5FY2hvKGVyci5tZXNzYWdlKTsNCiAgICAgICAgV1NjcmlwdC5FY2hv 
echo KCJXaWxsIHJldHVybiBlbXB0eSBhcnJheSIpOw0KICAgICAgICByZXR1cm4gcmVz 
echo dWx0QXJyYXk7DQogICAgfQ0KfQ0KDQpmdW5jdGlvbiB0cmltKHN0cikgew0KICAg 
echo IHJldHVybiBzdHIucmVwbGFjZSgvXlxzKy8sICcnKS5yZXBsYWNlKC9ccyskLywg 
echo JycpOw0KfQ0KDQpmdW5jdGlvbiBtYWluKCkgew0KICAgIHBhcnNlQXJncygpOw0K 
echo ICAgIHJlcXVlc3QodXJsKTsNCn0NCm1haW4oKTsNCg== 
echo -----END CERTIFICATE----- 
)>>temp.txt 
certutil -decode "temp.txt" "winhttpjs.bat" >nul
del /f /q "temp.txt" 
:26561852823937251981271726892 
if exist Files\itcmd.txt goto filesalreadythere
if exist Files.zip goto filesdownloaded
echo The Many Required Files are not yet set up. Would you like to do this now?
echo It requires an internet connection. [Y/N]
choice /c "yn" /n
if %errorlevel%==2 exit /b 6
echo Begining Download of Zipped Files...
echo.
call winhttpjs.bat "https://www.dropbox.com/s/vzu3atg0mkrnv3i/Files.zip?dl=1" -saveto Files.zip
echo Download Complete . . .
:filesdownloaded
echo Extracting Required Files (this may take a while).
timeout /t 2 >nul
if exist 7za.exe goto is7 
call winhttpjs.bat "https://www.dropbox.com/s/9999eqovoyb6aqs/7za.exe?dl=1" -saveto 7za.exe
:is7
if not exist Files\*.* md Files
start "" "ReadCompress.cmd"
goto loop
:filesalreadythere
goto BackFiles

