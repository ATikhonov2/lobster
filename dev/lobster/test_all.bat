@rem @echo off
@cls
@for /R ..\.. %%F in (*.lobster) do @(
    @start /B ..\..\bin\lobster.exe --non-interactive-test --silent %%F
    @rem @if %errorlevel% neq 0 exit /b %errorlevel%
)
@pause
