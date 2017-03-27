REM Casey Bladow
REM 4/5/15
REM Compare two files comprised of hash values and verfing they match

fciv.exe -add c;\fciv -r -XML c:\fciv\windows-hashes.XML > results.txt
fciv.exe -list - XML c:\fciv\windows-hases.XML >> results.txt
fciv.exe -v -XML c:\fciv\windows-hashes.XML >> results.txt