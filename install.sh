#!/usr/bin/env bash

### build 3 ###

apt-get update
apt-get install -y wget unzip git nano task-spooler make gcc

# ADMIXTURE
cd /home; \
tar -xzf admixture_linux-1.3.0.tar.gz; \
rm admixture_linux-1.3.0.tar.gz; \
ln -s /home/admixture_linux-1.3.0/admixture /usr/local/bin

# ALDER
apt-get install -y libfftw3-3 libfftw3-double3 libfftw3-long3 libfftw3-single3 liblapack3 libblas3; \
cd /home; \
tar -xzf alder_v1.03.tar.gz; \
rm alder_v1.03.tar.gz; \
ln -s /home/alder/alder /usr/local/bin

# PLINK
cd /home; \
mkdir plink; \
unzip plink_linux_x86_64.zip -d /home/plink; \
rm plink_linux_x86_64.zip; \
ln -s /home/plink/plink /usr/local/bin

# BWA
apt-get install -y zlib1g-dev; \
cd /home; \
unzip bwa-master.zip; \
rm bwa-master.zip; \
cd bwa-master; \
make; \
ln -s /home/bwa-master/bwa  /usr/local/bin

# Node.js
apt-get install xz-utils; \
cd /home; \
tar -xf node-v7.0.0-linux-x64.tar.xz; \
rm node-v7.0.0-linux-x64.tar.xz; \
ln -s /home/node-v7.0.0-linux-x64/bin/node /usr/local/bin
ln -s /home/node-v7.0.0-linux-x64/bin/npm /usr/local/bin

# Redis
cd /home; \
tar -xzf redis-3.2.5.tar.gz; \
rm redis-3.2.5.tar.gz; \
cd redis-3.2.5/deps; \
make hiredis lua jemalloc linenoise; \
cd ..; \
make; \
make install

# EIGENSOFT
apt-get install -y libgsl0-dev libgfortran3 libopenblas-dev; \
cd /home; \
tar -xzf EIG-6.1.4.tar.gz; \
rm EIG-6.1.4.tar.gz; \
ln -s /home/EIG-6.1.4/bin/convertf /usr/local/bin; \
ln -s /home/EIG-6.1.4/bin/smartpca /usr/local/bin; \
tar -zxvf gsl-1.6.tar.gz; \
rm gsl-1.6.tar.gz; \
cd gsl-1.6; \
./configure; \
make; \
make install; \
echo 'export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib' >> ~/.bashrc; \
echo 'export CFLAGS="-I/usr/local/include"' >> ~/.bashrc; \
echo 'export LDFLAGS="-L/usr/local/lib"' >> ~/.bashrc; \
. ~/.bashrc

# AdmixTools
ln -s /home/qp3Pop /usr/local/bin

# htslib
# samtools
# bcftools