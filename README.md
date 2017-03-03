# simple-notes
I often need to take a simple note quickly and easily, such as:

*   Copy some text and save it as notes.
*   Save a screenshot as notes;
*   Write down a sentence as notes;

The scripts in this repository are used to do it.

The scripts will append the text that I selected or input to a specific notes file in a specific folder. The notes file is named in the format of __"yyyymm.mkd"__, e.g. "201703.mkd". These notes files are located in a subfolder named __"myNotes"__ under my home folder. So normally I will get a notes file per month in this folder.

The scripts can save the screenshot that I copied to an image file in the same folder, with the named in format of __"yyyymmdd-hhmmss.png"__, and at same time it will append a link of the image to the notes file.

## For Windows

The Windows Powershell scripts are located in the [win](https://github.com/tengshg/simple-notes/tree/master/win) folder of this repository. They work in this way:

*   __paste2Notes.ps1__ will check first if there's image in clipboard. if there is, it will save the image to a file, append a link of the image to the notes file, and then exit; If no image in clipboard, it will check if any text in clipboard. If so, it will append the text to the not file and exit. If neither image nor text in clipboard, the script will exit with doing anything. So I will copy some text or a screenshot to clipboard before I run this script.

    The batch file __paste2Notes.bat__ is used to run the script __past2Notes.ps1__. I create a shortcut of this batch file in my desktop, and assign keyboard shortcut __Ctr+Alt+N__ to it. And I set the shortcut of batch to run in a __minimised__ window, to make it run quietly without a pop up window.

*   __input2Notes.ps1__ will ask for text input first, then save the text to the notes file. 

    In a similar way, there's a batch file __input2Notes.bat__ for __input2Notes.ps1__. I create a shortcut of the batch file in my desktop, and assign keyboard shortcut __Ctr+Shift+N__ to it. Of course I will not set this shortcut to run in __minimised__ window, as I need the pop up window to input my notes text.

With above setting, I can take a simple note quickly and easily:

*   When I want to copy some text and save it as notes, I will select and highlight the text with mouse, then press __Ctr+C__ to copy the text to clipboard, then press __Ctr+Alt+N__ to run __paste2Notes.bat__, the script will run quietly, get the text from the clipboard and save it to my notes file;

*   When I want to save a screenshot as notes, depends on whatever part of the screen I want, I may copy the whole screen by press __PrtSc__ key, or copy the active window by press __Alt+PrtSc__ key, or use screenshot program such as __Snagit__ to select a specific area, then press __Ctr+Alt+N__ to run __paste2Notes.bat__, the script will run quietly, save the image to a file in my notes folder and append a link of the image to my notes file;

*   When I want to write a sentence as notes, I press __Ctr+Shift+N__ to run __input2Notes.bat__, input my text in the pop up window, then press enter, the text will be put to my notes file.

Please note that __Powershell verion 5__ is needed to run these scripts. 

## For OS X

The OS X scripts are located in the [osx](https://github.com/tengshg/simple-notes/tree/master/osx) folder of this repository. There're three scripts that work in a slightly different way:

*   __SelectText2Notes.workflow__ will save the selected text to the notes file. Just select the text, no need to copy the selected text to clipboard, then select the script from the context menu and run it, or use keyboard shortcut to run it. I assign keyboard shortcut __⌃⌥⌘N__ to this service.

*   __CopyScreen2Notes.app__ use __screencapture__ command to capture a screenshot and save an image file, and append a link of the image to the notes file. I assign keyboard shortcut __⌥⇧⌘N__ to this service.

*   __InputText2Notes.app__ will display a dialog box to ask you input some text, then append the text to the notes file. I assign keyboard shortcut __⌃⇧⌘N__ to this service.

With above scripts and keyboard shortcut assigned, normally I take simple notes in OS X in this way:

*   When I want to select and save some text as notes, I will highlight the text with mouse, then press __⌃⌥⌘N__, the script will append the text selected to my notes file;

*   When I want to save a screenshot as notes, I will press __⌥⇧⌘N__ key, and select whatever part of screen that I want, then the script will save the image to a file and append a link of the image in my notes file;

*   When I want to write a sentence as notes, I press __⌃⇧⌘N__, input my text in the pop up window, then press enter, the text will be put to my notes file.

