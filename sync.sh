clear
grn=$(tput setaf 2)
red=$(tput setaf 1)
rst=$(tput sgr0)
echo "**${grn}           Welcome to LazyAOSP${rst}           **"

echo "**   ${red}Make sure you have all the prereqs${rst}    **"
echo "**    if not visit source.android.com      **"
echo "** Which device do you want to build for?  **"
echo "** Make sure this script is in the dir you **"
echo "** want AOSP source to be in. Is it? (y/n) **"
read srcdir
if [ $srcdir = y ]
then
    echo "Good! Now we need to sync Salvage Mod's Source code."
    echo "This will take an hour plus depending on your connection."
    echo "You will be asked your name and email then it will start syncing."
    echo "Press Enter to continue"
    read waka
    repo init -u git://github.com/CyanogenMod/android.git -b gingerbread
    repo sync -j12
    git clone https://github.com/koush/proprietary_vendor_htc.git -b gingerbread vendor/htc/
    echo "You're done syncing!! Please run build.sh to begin compiling."
elif [ $srcdir = n ]
then
    echo "Please move this script to the right directory and start over."
fi
