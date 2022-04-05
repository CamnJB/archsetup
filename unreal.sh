#clone unreal github repo
git clone https://github.com/EpicGames/UnrealEngine.git .config/UnrealEngine
cd .config/UnrealEngine

./Setup.sh
./GenerateProjectFiles.sh
make

cd Engine/Binaries/Linux/
UE4Editor
