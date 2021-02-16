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
git clone https://github.com/ZyCromerZ/lancelot -b eleven $KERNEL
cd $KERNEL
git remote add myrepo https://$myKey@github.com/ZyCromerZ/lancelot_kernels
addBranch eleven-upstream
addBranch eleven-upstream-test
git push -f myrepo --all
cd ..
rm -rf $KERNEL