

(
@ECHO.^<?xml version="1.0" encoding="UTF-8"^>
@ECHO.^<addons^>
)>addons.xml

(
@ECHO.^<?xml version="1.0" encoding="UTF-8"^>
@ECHO.^<addons^>
)>plugins

for /f "delims=~ tokens=*" %%a IN ('dir /a:d /s /b *') do call :make_xml "%%a"


@ECHO.^</addons^> >>addons.xml
@ECHO.^</addons^> >>plugins
md5 -l -n addons.xml>addons.xml.md5
md5 -l -n addons.xml>plugins.hash
pause
exit


:make_xml
cls
findstr /V "UTF" "%~1\addon.xml">>addons.xml
findstr /V "UTF" "%~1\addon.xml">>plugins
@echo.>>addons.xml
@echo.>>plugins
