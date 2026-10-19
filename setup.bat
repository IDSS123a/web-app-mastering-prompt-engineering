@echo off
REM Commander bootstrap for web-app-mastering-prompt-engineering.
REM Run once from this folder. Needs git and node. Automation is fetched from the v1.6.2 tag, never from main.
setlocal
cd /d "%~dp0"
where git >nul 2>nul || (echo Git nije instaliran. & exit /b 1)
where node >nul 2>nul || (echo Node.js nije instaliran. & exit /b 1)
if not exist .git git init -b main
git clone --branch v1.6.2 --depth 1 https://github.com/IDSS123a/commander __cmdr_tmp || (echo Kloniranje taga v1.6.2 nije uspjelo. & exit /b 1)
xcopy /E /I /Y __cmdr_tmp\automation\.claude .claude >nul
xcopy /E /I /Y __cmdr_tmp\automation\.github .github >nul
rmdir /S /Q __cmdr_tmp
copy /Y .claude\project-guard.config.example.json .claude\project-guard.config.json >nul
node .claude\hooks\project-guard.js --scan || (echo Project-guard je prijavio problem. Posalji mi ispis. & exit /b 1)
git add -A
git commit -m "chore: project initialization under Commander v1.6.2"
where gh >nul 2>nul && gh auth status >nul 2>nul && (gh repo create IDSS123a/web-app-mastering-prompt-engineering --private --source . --remote origin --push) || (echo. & echo Kreiraj PRIVATNI repo web-app-mastering-prompt-engineering na github.com/IDSS123a i reci mi kad je gotovo.)
echo.
echo Jos jedan korak: u GitHub repo Settings - Code security ukljuci push protection / secret scanning.
echo Stavi mandat u docs\mandate\ ako ga jos nisi.
endlocal
