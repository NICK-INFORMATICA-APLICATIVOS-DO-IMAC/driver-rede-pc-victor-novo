@echo off
%systemdrive%
cd %windir%/system32/
echo Please wait while installing drivers. Do not turn off or unplug the computer power during the installation...
.\pnputil /add-driver "%~dp0e1d68x64.inf" /install

set NetworkDevicePath=HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002BE10318}\
set TargetDriverDesc="Intel(R) Ethernet Connection"
set DevNum=0000
reg query %NetworkDevicePath%%DevNum% /v DriverDesc | find %TargetDriverDesc% >nul
if NOT ErrorLevel 1 goto End

set DevNum=0001
reg query %NetworkDevicePath%%DevNum% /v DriverDesc | find %TargetDriverDesc% >nul
if NOT ErrorLevel 1 goto End

set DevNum=0002
reg query %NetworkDevicePath%%DevNum% /v DriverDesc | find %TargetDriverDesc% >nul
if NOT ErrorLevel 1 goto End

set DevNum=0003
reg query %NetworkDevicePath%%DevNum% /v DriverDesc | find %TargetDriverDesc% >nul
if NOT ErrorLevel 1 goto End

set DevNum=0004
reg query %NetworkDevicePath%%DevNum% /v DriverDesc | find %TargetDriverDesc% >nul
if NOT ErrorLevel 1 goto End

set DevNum=0005
reg query %NetworkDevicePath%%DevNum% /v DriverDesc | find %TargetDriverDesc% >nul
if NOT ErrorLevel 1 goto End

set DevNum=0006
reg query %NetworkDevicePath%%DevNum% /v DriverDesc | find %TargetDriverDesc% >nul
if NOT ErrorLevel 1 goto End

set DevNum=0007
reg query %NetworkDevicePath%%DevNum% /v DriverDesc | find %TargetDriverDesc% >nul
if NOT ErrorLevel 1 goto End

set DevNum=0008
reg query %NetworkDevicePath%%DevNum% /v DriverDesc | find %TargetDriverDesc% >nul
if NOT ErrorLevel 1 goto End

set DevNum=0009
reg query %NetworkDevicePath%%DevNum% /v DriverDesc | find %TargetDriverDesc% >nul
if NOT ErrorLevel 1 goto End

set DevNum=0010
reg query %NetworkDevicePath%%DevNum% /v DriverDesc | find %TargetDriverDesc% >nul
if NOT ErrorLevel 1 goto End

set DevNum=0011
reg query %NetworkDevicePath%%DevNum% /v DriverDesc | find %TargetDriverDesc% >nul
if NOT ErrorLevel 1 goto End

set DevNum=0012
reg query %NetworkDevicePath%%DevNum% /v DriverDesc | find %TargetDriverDesc% >nul
if NOT ErrorLevel 1 goto End

set DevNum=0013
reg query %NetworkDevicePath%%DevNum% /v DriverDesc | find %TargetDriverDesc% >nul
if NOT ErrorLevel 1 goto End

set DevNum=0014
reg query %NetworkDevicePath%%DevNum% /v DriverDesc | find %TargetDriverDesc% >nul
if NOT ErrorLevel 1 goto End

set DevNum=0015
reg query %NetworkDevicePath%%DevNum% /v DriverDesc | find %TargetDriverDesc% >nul
if NOT ErrorLevel 1 goto End

set DevNum=0016
reg query %NetworkDevicePath%%DevNum% /v DriverDesc | find %TargetDriverDesc% >nul
if NOT ErrorLevel 1 goto End

goto NoDevices

:NoDevices
%~d0
cd %~dp0
%windir%/system32/pnputil /add-driver e1d68x64.inf /install

:End

exit