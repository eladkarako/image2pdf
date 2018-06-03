@echo off
set "SORT=..\bin\sort\index.cmd"
set "IMAGEMAGICK=..\bin\imagemagick\convert.exe"
set "EXIFTOOL=..\bin\exiftool\exiftool.exe"
set "QPDF=..\bin\qpdf\qpdf.exe"

echo.
echo ----------------------------------------------------------
echo getting all JPG files in the folder into a list.
echo. >list.txt
for %%e in (*.jpg) do (
  echo '%%e'>>list.txt
)

echo.
echo ----------------------------------------------------------
echo natually-sort and unique the list.
call "%SORT%" ".\list.txt"


echo.
echo ----------------------------------------------------------
echo this is the time to manually-edit (optional)
echo the 'list_sorted_uniqued.txt' file.
echo [press any key when done...]
pause 1>nul 2>nul


echo.
echo ----------------------------------------------------------
call "%IMAGEMAGICK%" -verbose "@list_sorted_uniqued.txt" "document.pdf"
echo.
echo ----------------------------------------------------------
call "%EXIFTOOL%"    -verbose -overwrite_original -XMPToolkit="" -all="" -trailer:all=""   "document.pdf"
echo.
echo ----------------------------------------------------------
call "%QPDF%"        --linearize "document.pdf"                                            "document_cleaned.pdf"
echo.
echo ----------------------------------------------------------
echo [DONE]
