@echo off
:w
set /p token=Token:
:u
set /p id=Channel ID:

:l
echo Discord CLI V1.0.1 "--help"
:q
set /p text=Enter text: 
echo %text%
IF "%text%"=="--help" (
cls
ECHO ========================
    ECHO --token to change token
	ECHO --channel to change channelID
	ECHO ========================
	GOTO q
)

IF "%text%"=="--token" (
GOTO w
cls
)

IF "%text%"=="--channel" (
GOTO u
cls
)


curl -i -H "Accept: application/json" -H "Content-Type:application/json" -H "authorization: %token%" -X POST --data "{\"content\": \"%text%\"}" https://discord.com/api/v8/channels/%id%/messages
cls
GOTO l
