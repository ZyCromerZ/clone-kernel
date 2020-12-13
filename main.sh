KERNEL=$(pwd)/kernel-dir
git clone https://$fromKey@github.com/$fromUser/X01BD_Kernel -b 20201208/main $KERNEL
cd $KERNEL
git remote add myrepo https://$myKey@github.com/RyuujiX/kernel-x01bd
git push -f myrepo --all
cd ..
rm -rf $KERNEL