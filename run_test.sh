nnodes=12
input='test_kpar_fast_v00'
mkdir -p solution
cd interpolation
./interpolation test_interp.in
cd ../distribution
./generate_distribution $input'_dist.in'
cd ../
mpirun -np $nnodes --oversubscribe ./src/ALPS $input'.in'
