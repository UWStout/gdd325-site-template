# HTML 5 Game Web Showcase Template
This is a simple web site based on old Angular.js and HTML5 for showcasing a semester's worth of HTML 5 games created in
UW Stout's GDD 325 course, 2d Game Design and Development.

## Structure
There is content to support up to 6 games and it's not too hard to add more.  If you have fewer, just delete the folders
you don't need.  The overall structure is as follows:
~~~~
Web root
  |
  |\_      Index.html: Intended entry point
  |\_ semesterData.js: Information for this specific semester's games
  |\_     setNames.sh: Bash Script that will customize files with game names, etc.
  |\_      yarnall.sh: Bash Script that will descend into each game's play folder and run 'yarn install'
   \_   [game folder]: Contents specific to one game, renamed by 'setNames.sh', customized by the students
         |
         |\_ index.html: Game entry page (no customization needed, all generated by Angular.js)
         |\_ gameData.js: Data specific to this game, see below for details
         |\_ bannerThumb.gif: Animated banner for the game shown on main index.html page
          \_ screenshot#.jpg: Screenshots for each game (defaults to 5 but students can do fewer)
~~~~

## Customizing
The site is setup for 6 games.

If you need fewer, just delete the corresponding folders and delete the unneeded parts of setNames.sh
(the variables and the bits that operate per-game).

If you need more games, there is a bit more work involved:
* Copy one of the other game folders and rename it following the numbering scheme.
* Edit semesterData.js and add the extra games to the array at the end, following the name scheme carefully
  * Note capital vs lowercase (it's important!)
* Edit setNames.sh and add new variables for your new games (again copy paste but be careful)
* At the end of setNames.sh, duplicate the actions for game 6 as many times as needed then customize for your extra games.

### Custom Game Info
To get started, you need to run a script that will rename the folders to match the games and update the code accordingly.
* Open and edit `setNames.sh` in any text editor
* All of the variables at the top of the files should be updated with:
  * The display name of the game
  * The game's folder name
  * the github repository URL

Once the script is updated, run it (on a *nix system or with Bash on windows) and it will customize the entire site
structure for the current semester.  Make sure you do this BEFORE you start editing game and semester details as this
script will overwrite those changes.

### Custom Semester and Game Data
`semesterData.js` should be edited to reflect the new semester.  The script will have already customized the paths and 
game names but there is some more to edit manually.

Each game has a `gameData.js` file that the STUDENTS should edit.  They can do so right on github.  Make sure they are
careful to not break JavaScript syntax as this will cause the page to not show up at all.  They need to update the following:
* Information inside of `gameData.js` except for the vimeo ID's (I update those)
* Provide an animate gif banner for their game that meets the following criteria:
  * Is EXACTLY 536x300 pixels
  * Is no larger than about 2MB
  * Shows their game title in some way
  * Is named EXACTLY `bannerThumb.gif`
* Provide 5 screenshots in jpeg format that show game play (preferably in 16:9 ratio)
  * These should be named `screenshot#.jpg` with # being 1 through 5

