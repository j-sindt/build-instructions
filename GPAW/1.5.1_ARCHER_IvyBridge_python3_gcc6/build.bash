#!/bin/bash
# python-compute/3.6.0_gcc6.1.0 switches to PrgEnv-gnu
module load python-compute/3.6.0_gcc6.1.0
module load numpy/1.16.2-libsci_build1
module load scipy/1.2.1-libsci_build1
module load cray-fftw
module load libxc/4.3.4_build1/GNU
module load pc-ase/441bb707d_build1
module list &> module.log
which python3
python3 --version

export CRAYPE_LINK_TYPE=dynamic
prefix=/work/y07/y07/cse/gpaw/1.5.1_build3
(
    cd gpaw-1.5.1
    cp -p ../customize.py .
    python3 setup.py install --prefix=$prefix
)
