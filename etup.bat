echo off
cls
mkdir anim
mkdir data
mkdir data\Decision
mkdir data\maps
mkdir models
mkdir audio
mkdir audio\CONFIG
mkdir audio\SFX
mkdir audio\streams
cls
move anim.uha anim\anim.uha
move models1.uha models\models1.uha
move models2.uha models\models2.uha
move data.uha data\data.uha
move Icons.uha data\Icons.uha
move Paths.uha data\Paths.uha
move script.uha data\script.uha
move Decision.uha data\Decision\Decision.uha
move maps.uha data\maps\maps.uha
move CONFIG.uha audio\CONFIG\CONFIG.uha
move SFX1.uha audio\SFX\SFX1.uha
move SFX2.uha audio\SFX\SFX2.uha
move streams.uha audio\streams\streams.uha
copy uha.exe anim\uha.exe
copy uha.exe audio\CONFIG\uha.exe
copy uha.exe audio\SFX\uha.exe
copy uha.exe audio\streams\uha.exe
copy uha.exe data\uha.exe
copy uha.exe data\Decision\uha.exe
copy uha.exe data\maps\uha.exe
copy uha.exe models\uha.exe
cls
cd anim
uha.exe x -d1 -o+ -vm+ -y+ anim.uha
cls
del anim.uha
del uha.exe
cls
cd ..
cls
cd audio\CONFIG
uha.exe x -d1 -o+ -vm+ -y+ CONFIG.uha
cls
del CONFIG.uha
del uha.exe
cls
cd ..
cls
cd SFX
uha.exe x -d1 -o+ -vm+ -y+ SFX1.uha
cls
uha.exe x -d1 -o+ -vm+ -y+ SFX2.uha
cls
del SFX1.uha
del SFX2.uha
del uha.exe
cls
cd ..
cls
cd streams
uha.exe x -d1 -o+ -vm+ -y+ streams.uha
cls
del streams.uha
del uha.exe
cd ..
cd ..
cls
cd data
uha.exe x -d1 -o+ -vm+ -y+ data.uha
uha.exe x -d1 -o+ -vm+ -y+ Icons.uha
uha.exe x -d1 -o+ -vm+ -y+ Paths.uha
uha.exe x -d1 -o+ -vm+ -y+ script.uha
del data.uha
del Icons.uha
del Paths.uha
del script.uha
del uha.exe
cls
cd Decision
uha.exe x -d1 -o+ -vm+ -y+ Decision.uha
del Decision.uha
del uha.exe
cls
cd ..
cd maps
uha.exe x -d1 -o+ -vm+ -y+ maps.uha
del maps.uha
del uha.exe
cls
cd ..
cd..
cls
cd models
uha.exe x -d1 -o+ -vm+ -y+ models1.uha
uha.exe x -d1 -o+ -vm+ -y+ models2.uha
cls
del models1.uha
del models2.uha
del uha.exe
cls
cd ..
cls
uha.exe x -d1 -o+ -vm+ -y+ GTA.uha
del GTA.uha
del uha.exe
cls
del setup.bat
cls