clear
grn=$(tput setaf 2)
red=$(tput setaf 1)
rst=$(tput sgr0)
echo "------------------------------------------------------"
echo "${grn}               Welcome to LazyAOSP!${rst}                   "
echo "${red} CyanogenMod version only works with HTC Devices      "
echo " Have you already run sync.sh? (y/n)"${rst}
read snc
case $snc in
	y) echo " Ok good you may continue";;
	n) echo " Please run sync.sh" exit;;
esac
echo " Which device do you want to build for?"
echo " 1 - Ace"
echo " 2 - Blade"
echo " 3 - Bravo"
echo " 4 - Bravoc"
echo " 5 - Buzz"
echo " 6 - Click"
echo " 7 - Crespo"
echo " 8 - Desire"
echo " 9 - Dream-Sapphire"
echo " 10 - Encore"
echo " 11 - Espresso"
echo " 12 - Generic"
echo " 13 - Glacier"
echo " 14 - Harmony"
echo " 15 - Hero"
echo " 16 - Heroc"
echo " 17 - Incredible"
echo " 18 - Legend"
echo " 19 - Leo"
echo " 20 - Liberty"
echo " 21 - One"
echo " 22 - Passion"
echo " 23 - Sholes"
echo " 24 - Speedy"
echo " 25 - Supersonic"
echo " 26 - Vega"
echo " 27 - Vision"
echo " 28 - z71"
echo " 29 - Zepplin"
echo " 30 - Zero"
read device
echo "Build time depends on your computer"
echo "Press enter to start compiling"
read waka
	case $device in
	1) dev=ace;;
	2) dev=blade;;
	3) dev=bravo;;
	4) dev=bravoc;;
	5) dev=buzz;;
	6) dev=click;;
	7) dev=crespo;;
	8) dev=desire;;
	9) dev=dream-sapphire;;
	10) dev=encore;;
	11) dev=espresso;;
	12) dev=generic;;
	13) dev=glacier;;
	14) dev=harmony;;
	15) dev=hero;;
	16) dev=heroc;;
	17) dev=incredible;;
	18) dev=legend;;
	19) dev=leo;;
	20) dev=liberty;;
	21) dev=one;;
	22) dev=passion;;
	23) dev=sholes;;
	24) dev=speedy;;
	25) dev=supersonic;;
	26) dev=vega;;
	27) dev=vision;;
	28) dev=z71;;
	29) dev=zepplin;;
	30) dev=zero;;
	esac
		. build/envsetup.sh
		brunch $dev		
if [ -e out/target/product/${dev}/*.zip ]
	then
	echo "Congrats! You will find the rom in out/target/product/${dev}"
	else
	echo "Something went wrong. Try looking for errors and use your friendly google"
fi

 
