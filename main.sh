KERNEL=$(pwd)/kernel-dir
if [ -z "$myKey" ];then
    exit
fi

# git clone https://$fromKey@github.com/$fromUser/X01BD_Kernel -b 20201208/main $KERNEL
git clone https://gitlab.pixelexperience.org/android/vendor-blobs/vendor_asus_X01BD.git -b ten $KERNEL
cd $KERNEL
git remote add myrepo https://$myKey@github.com/ZyCromerZ/vendor_asus_X01BD
git push -f myrepo --all
cd ..
rm -rf $KERNEL