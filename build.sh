echo "------------------------------------------------------"
echo "               Welcome to LazyAOSP!                   "
echo "Have you already run sync.sh? (y/n)"
read snc
case $snc in
	y) echo "Ok good you may continue";;
	n) echo "Please run sync.sh" exit;;
esac
echo "Which device do you want to build for?"
echo " 1 - Supersonic"
echo " 2 - Incredible"
echo " 3 - Dream-Sapphire"
read device
	case $device in
	1) dev=supersonic
	;;
	2) dev=inc
	;;
	3) dev=dream-sapphire
	esac
	. build/envsetup.sh
	lunch salvage_$dev-userdebug
	make clean
echo "Everything is setup. Build times depend on your computer."
echo "Press enter to start compiling"
read waka
make -j`grep 'processor' /proc/cpuinfo | wc -l` otapackage
if [ -e out/target/product/${dev}/*.zip ]
	then
	echo "Congrats! You will find the rom in out/target/product/${dev}"
	else
	echo "Something went wrong. Try looking for errors and use your friendly google"
fi
