# simple-notes
I often want to take some simple notes quickly and easily, such as:

*   Copy some text and save them as notes.
*   Save a screenshot as notes;
*   Write down a sentence as notes;

The scripts in this repository are used to do it.

The scripts will append the text that I selected or input to a specific notes file in a specific folder. The notes file is named in the format __"yyyymm.mkd"__, e.g. "201703.mkd". These notes files are located in the subfolder __"myNotes"__ under my home folder. So normaly I will get a notes file per month in this folder.

It will save the screenshot that I copied to a image file named __"yyyymmdd-hhmmss.png"__ in the same folder, and at same time it will append a link of the image to the notes file.

## For Windows

The Windows Powershell scripts are located in [`win`][win scripts]. They work in this way:

*   __paste2Notes.ps1__ will check first if there's image in clipboard. if there is, it will save the image file to the folder, and append a link of the image to the notes file; If no image in clipboard, it will check if any text in clipboard. if so, it will append the text to the notes file. if neither image nor text in clipboard, the script will do nothing. So I will copy some text or a screenshot to clipboard before I run this script.

    The batch file __paste2Notes.bat__ is used to run the script __past2Notes.ps1__. I create a shortcut of this batch file in my desktop, and assign keyboard shortcut __Ctr+Alt+N__ to it. And I set the shortcut of batch to run in a __minimised__ window, to make it run quietly without pop up a window.

*   __input2Notes.ps1__ will ask text input first, then save the text to the notes file. 

    In the similar way, there's batch file __input2Notes.bat__ for __input2Notes.ps1__. Also I create a shortcut of the batch file in my desktop, and assign keyboard shortcut __Ctr+Shift+N__ to it. Of course I will not set this shortcut to run in __minimised__ window, as I need the pop up window to input my notes text.

With above setting, I can take simple notes quickly and easily:

*   When I want to copy some text and save them as notes, I will select and highlight the text with mouse, then press __Ctr+C__ to copy the text to clipboard, then press __Ctr+Alt+N__, the script will run quietly, paste the text and save it to my notes file;

*   When I want to save a screenshot as notes, I will copy the whole screen by press __PrtSc__ key, or copy the active window by press __Alt+PrtSc__ key, or use screenshot program such as __Snagit__ to copy whatever screen I want, then press __Ctr+Alt+N__, the script will run quietly, save the image to a file in my notes folder and append a link of the image in my notes file;

*   When I want to write a sentence as notes, I press __Ctr+Shift+N__, input my text in the pop up window, then press enter, the text will be put to my notes file.

## For OS X

The OS X scripts are located in [`osx`][osx scripts]. There're three scripts that work in a slightly different way:

*   __SelectText2Notes.workflow__ will save the selected text to the notes file. Just select the text, no need to copy the selected text to clipboard, then select the script from the context menu and run it, or use keyboard shortcut to run it. I assign keyboard shortcut __⌃⌥⌘N__ to this service.

*   __CopyScreen2Notes.app__ use __screencapture__ command to capture a screenshot and save an image file, and append a link of the image to the notes file. I assign keyboard shortcut __⌥⇧⌘N__ to this service.

*   __InputText2Notes.app__ will display a dialog box to ask you input some text,  and append the text to the notes file. I assign keyboard shortcut __⌃⇧⌘N__ to this service.

With above scripts and keyboard shortcut assigned, normally I take simple notes in OS X in this way:

*   When I want to select and save some text as notes, I will select and highlight the text with mouse, then press __⌃⌥⌘N__, the script will append the text selected to my notes file;

*   When I want to save a screenshot as notes, I will press __⌥⇧⌘N__ key, and select whatever screen I want, then the script will save the image to a file and append a link of the image in my notes file;

*   When I want to write a sentence as notes, I press __⌃⇧⌘N__, input my text in the pop up window, then press enter, the text will be put to my notes file.

