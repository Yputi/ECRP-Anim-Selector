# ECRPAnimSelector
AHK script to create an UI for the /anim's used in ECRP. Also allows user to create "Favorites" for quicker access.

This repository includes the following:
1. An Excel file with a sheet used to put every single /anim option in a category, just for the people interested.
2. The AHK script itself.

# How to use
1. AHK is required for this anim selector to work! Make sure AHK has been installed and set up.
2. Put the script (.AHK) file anywhere you want, as long as you can find it back.
3. Run the .AHK file! Do this every time when you want to go use the script. (Or put a hyperlink to the .ahk file in the " %APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup " folder if you want to automatically start the script when Windows starts)
4. You should now see the AutoHotKey Icon in your System Tray. This means the script is ready!
5. Press F10 to open the menu and enjoy!

# Can I change the standard F10 hotkey?
Yes.
Right click on the .AHK file and edit the file using almost any text editor. Sscroll all the way to the top and replace "F10" with anything you like. See this image as example: https://i.gyazo.com/bbea4d938a7b6afcfa35f8a36416a27c.png
For any special- or combination keys, please head to this page: https://www.autohotkey.com/docs/KeyList.htm#keyboard

# How to close the script?
The script will always run, even when GTA itself is running or not. There is an "Exit Application" button added to the menu when you press F10. This will close the script.
To confirm, check your system tray to see if its still active in there.

# How to add favorites
Right click on the .AHK file and edit the file using almost any text editor. Sscroll all the way to the top and you should see something similar to this all the way at the top: https://i.gyazo.com/76daff77cfad687f2e23e7c6548d84f4.png
Replace the text "FAVORITEx" with the Exact animation name you want. You can add more than 10 favorites if you want, just copy and paste one line as many times as you want.
(Make sure to save it and start the script again once you have edited this)

# Why do I see some animations double?
Some animations fit well in multiple categories. Please see the list above to see what categories every animation is placed in.
