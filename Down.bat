set today=%date:~0,4%-%date:~5,2%-%date:~8,2%
md %today%
cd %today%
wget http://www.damddos.com/data/%today%/ddosack.json
wget http://www.damddos.com/data/%today%/ddosackamount.json
wget http://www.damddos.com/data/%today%/ddosackprofile.json
wget http://www.damddos.com/data/%today%/ddosacksource.json
dir
cd ..
pause