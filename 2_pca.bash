
make

rm -r outputPC
mkdir outputPC

./a.out prm_pca.inp > outputPC/res_pca.res
cat outputPC/res_pca.res

cp prm_pca.inp  outputPC/
mv PC*.dat outputPC/

