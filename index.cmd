@echo off
echo %*
set pdbPath=%1
set pdbPath=%pdbPath:~0,-2%"

set srcPath=%~dp0
set srcPath="%srcPath:~0,-1%"

mkdir "%TEMP%\srcsrv"
xcopy /s /y %2 "%TEMP%\srcsrv"

cd ps
index.cmd -userID qrealka -repository ps_github_index -sourcesRoot %srcPath% -dbgToolsPath "%TEMP%\srcsrv" -symbolsFolder %pdbPath%

