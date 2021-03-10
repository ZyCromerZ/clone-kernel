KERNEL=$(pwd)/kernel-dir
if [ -z "$myKey" ];then
    exit
fi
addBranch()
{
    git fetch origin $1
    git checkout FETCH_HEAD && git checkout -b $1
}
# git clone https://$fromKey@github.com/$fromUser/X01BD_Kernel -b 20201208/main $KERNEL
git clone https://github.com/asus-sdm660-devs/android_kernel_asus_sdm660 -b lineage-18.1 $KERNEL
cd $KERNEL
git remote add myrepo https://$myKey@github.com/ZyCromerZ/x01bd

git push -f myrepo --all
cd ..
rm -rf $KERNEL