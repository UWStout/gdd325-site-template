#!/bin/bash
# This script will setup all the game names, folder names, and add
# connections to the specific game repos as submodules.  Make sure
# you fork the repo and then fill in all the variables below before
# runnig this script.

# Set these variables
Game1Name="Great Game 1"
Game1Folder="great_game_1"
Game1Repo="https://github.com/UWStout/gdd325-web-base"

Game2Name="Great Game 2"
Game2Folder="great_game_2"
Game2Repo="https://github.com/UWStout/gdd325-web-base"

Game3Name="Great Game 3"
Game3Folder="great_game_3"
Game3Repo="https://github.com/UWStout/gdd325-web-base"

Game4Name="Great Game 4"
Game4Folder="great_game_4"
Game4Repo="https://github.com/UWStout/gdd325-web-base"

Game5Name="Great Game 5"
Game5Folder="great_game_5"
Game5Repo="https://github.com/UWStout/gdd325-web-base"

Game6Name="Great Game 6"
Game6Folder="great_game_6"
Game6Repo="https://github.com/UWStout/gdd325-web-base"

# Setup 'play' folder to track game1's repo
if [ -d "./game1/play" ]; then
  rm -rf ./game1/play
fi
mkdir ./game1/play
git submodule add "${Game1Repo}" ./game1/play

# Update game 1 details
sed -i -e "s/Game1/${Game1Name}/g" ./semesterData.js
sed -i -e "s/game1/${Game1Folder}/g" ./semesterData.js
rm ./semesterData.js-e

sed -i -e "s/GameName/${Game1Name}/g" ./game1/gameData.js
sed -i -e "s/folderName/${Game1Folder}/g" ./game1/gameData.js
rm ./game1/gameData.js-e

mv game1 "${Game1Folder}"

exit

# Setup 'play' folder to track game2's repo
if [ -d "./game2/play" ]; then
  rm -rf ./game2/play
fi
mkdir ./game2/play
git submodule add "${Game2Repo}" ./game2/play

# Update game 2 details
sed -i -e "s/Game2/${Game2Name}/g" ./semesterData.js
sed -i -e "s/game2/${Game2Folder}/g" ./semesterData.js
rm ./semesterData.js-e

sed -i -e "s/GameName/${Game2Name}/g" ./game2/gameData.js
sed -i -e "s/folderName/${Game2Folder}/g" ./game2/gameData.js
rm ./game2/gameData.js-e

mv game2 "${Game2Folder}"

# Setup 'play' folder to track game3's repo
if [ -d "./game3/play" ]; then
  rm -rf ./game3/play
fi
mkdir ./game3/play
git submodule add "${Game3Repo}" ./game3/play

# Update game 3 details
sed -i -e "s/Game3/${Game3Name}/g" ./semesterData.js
sed -i -e "s/game3/${Game3Folder}/g" ./semesterData.js
rm ./semesterData.js-e

sed -i -e "s/GameName/${Game3Name}/g" ./game3/gameData.js
sed -i -e "s/folderName/${Game3Folder}/g" ./game3/gameData.js
rm ./game3/gameData.js-e

mv game3 "${Game3Folder}"

# Setup 'play' folder to track game4's repo
if [ -d "./game4/play" ]; then
  rm -rf ./game4/play
fi
mkdir ./game4/play
git submodule add "${Game4Repo}" ./game4/play

# Update game 4 details
sed -i -e "s/Game4/${Game4Name}/g" ./semesterData.js
sed -i -e "s/game4/${Game4Folder}/g" ./semesterData.js
rm ./semesterData.js-e

sed -i -e "s/GameName/${Game4Name}/g" ./game4/gameData.js
sed -i -e "s/folderName/${Game4Folder}/g" ./game4/gameData.js
rm ./game4/gameData.js-e

mv game4 "${Game4Folder}"

# Setup 'play' folder to track game5's repo
if [ -d "./game5/play" ]; then
  rm -rf ./game5/play
fi
mkdir ./game5/play
git submodule add "${Game5Repo}" ./game5/play

# Update game 5 details
sed -i -e "s/Game5/${Game5Name}/g" ./semesterData.js
sed -i -e "s/game5/${Game5Folder}/g" ./semesterData.js
rm ./semesterData.js-e

sed -i -e "s/GameName/${Game5Name}/g" ./game5/gameData.js
sed -i -e "s/folderName/${Game5Folder}/g" ./game5/gameData.js
rm ./game5/gameData.js-e

mv game5 "${Game5Folder}"

# Setup 'play' folder to track game6's repo
if [ -d "./game6/play" ]; then
  rm -rf ./game6/play
fi
mkdir ./game6/play
git submodule add "${Game6Repo}" ./game6/play

# Update game 6 details
sed -i -e "s/Game6/${Game6Name}/g" ./semesterData.js
sed -i -e "s/game6/${Game6Folder}/g" ./semesterData.js
rm ./semesterData.js-e

sed -i -e "s/GameName/${Game6Name}/g" ./game6/gameData.js
sed -i -e "s/folderName/${Game6Folder}/g" ./game6/gameData.js
rm ./game6/gameData.js-e

mv game6 "${Game6Folder}"
