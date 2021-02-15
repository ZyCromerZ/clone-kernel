KERNEL=$(pwd)/kernel-dir
if [ -z "$myKey" ];then
    exit
fi

# git clone https://$fromKey@github.com/$fromUser/X01BD_Kernel -b 20201208/main $KERNEL
git clone https://github.com/Redmi-MT6768/android_kernel_xiaomi_mt6768 -b eleven $KERNEL
cd $KERNEL
git remote add myrepo https://$myKey@github.com/ZyCromerZ/lancelot
git push -f myrepo --all
cd ..
rm -rf $KERNEL