./createmanifest.sh $1 $2
mkdir -p $3
cp h-manifest.conf *.sh $2 $3/
tar cvf $3.tar.gz $3