@echo off
:w
set /p webhook=Webhook:
:u
set /p user=Username:

:l
echo Discord CLI V1.0.1 "--help"
:q
set /p text=Enter text: 
echo %text%
IF "%text%"=="--help" (
cls
ECHO ========================
    ECHO --user to change username
	ECHO --webhook to change webhook
	ECHO ========================
	GOTO q
)

IF "%text%"=="--webhook" (
GOTO w
)

IF "%text%"=="--user" (
GOTO u
)

IF "%avatar%" == "" ( 
SET AVATAR=https://cdn1.iconfinder.com/data/icons/computer-techologies-outline-free/128/ic_discord_logo-512.png
)


curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"username\": \"%user%\", \"content\": \"%text%\"}" %webhook%
cls
GOTO l
