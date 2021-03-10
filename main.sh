KERNEL=$(pwd)/kernel-dir
if [ -z "$myKey" ];then
    exit
fi
addBranch()
{
    git fetch origin $1
    git checkout FETCH_HEAD && git checkout -b $1
}
git config --global user.name 'ZyCromerZ'
git config --global user.email 'neetroid97@gmail.com'
git config --global http.version HTTP/1.1
git config --global http.postBuffer 524288000

# mkdir gcc-arm
# wget https://delicate-queen-d0bf.zyc-files.workers.dev/4:/arm-linux-gnueabi-10.x-gnu-20210310.tar.gz
# tar -xvf arm-linux-gnueabi-10.x-gnu-20210310.tar.gz -C gcc-arm
# cd gcc-arm
# [[ -d "arm-linux-gnueabi" ]] && cd arm-linux-gnueabi
# git init .
# GCCVer=$(./bin/arm-linux-gnueabi-gcc -dumpversion)
# git remote add origin https://${myKey}@github.com/ZyCromerZ/arm-linux-gnueabi
# git checkout -b ${GCCVer}-20210310
# git lfs install
# for Findfile in `find . -type f -size +50M`
# do
#     git lfs track --filename "$Findfile"
# done
# git add .gitattributes && git commit -s -m 'add .gitattributes'
# git add . && git commit -s -m "GCC ${GCCVer} 20210310 | release"
# git push --all origin
# cd ..

mkdir gcc-arm64
wget https://delicate-queen-d0bf.zyc-files.workers.dev/4:/aarch64-linux-gnu-10.x-gnu-20210310.tar.gz
tar -xvf aarch64-linux-gnu-10.x-gnu-20210310.tar.gz -C gcc-arm64
cd gcc-arm64
[[ -d "aarch64-linux-gnu" ]] && cd aarch64-linux-gnu
git init .
GCCVer=$(./bin/aarch64-linux-gnu-gcc -dumpversion)
git remote add origin https://${myKey}@github.com/ZyCromerZ/aarch64-linux-gnu
git checkout -b ${GCCVer}-20210310
git lfs install
for Findfile in `find . -type f -size +50M`
do
    git lfs track --filename "$Findfile"
done
git add .gitattributes && git commit -s -m 'add .gitattributes'
git add . && git commit -s -m "GCC ${GCCVer} 20210310 | release"
git push --all origin
cd ..

rm -rf *