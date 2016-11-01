# lhmg-frozen
Репозиторий содержит скачанные и проверенные на работоспособность версии программ.
Последнее обновление репозитория: 29 октября 2016 года.

## Ссылки на сайты с программами:
1. [AdmixTools](https://github.com/DReichLab/AdmixTools)
2. [ADMIXTURE](http://www.genetics.ucla.edu/software/admixture/download.html)
3. [ALDER](http://groups.csail.mit.edu/cb/alder/)
4. [BWA](https://github.com/lh3/bwa)
5. [samtools](https://github.com/samtools/samtools)
6. [bcftools](https://github.com/samtools/bcftools)
7. [htslib](https://github.com/samtools/htslib)
8. [EIGENSOFT](https://www.hsph.harvard.edu/alkes-price/software/)  
9. [Node.js](https://nodejs.org/en/)
10. [PLINK](https://www.cog-genomics.org/plink2)
11. [Redis](http://redis.io)

## Оригинальные ссылки на исходные файлы:
1. https://github.com/DReichLab/AdmixTools.git
2. http://www.genetics.ucla.edu/software/admixture/binaries/admixture_linux-1.3.0.tar.gz
3. http://groups.csail.mit.edu/cb/alder/alder_v1.03.tar.gz
4. https://github.com/samtools/bcftools.git
5. https://github.com/lh3/bwa.git
6. https://data.broadinstitute.org/alkesgroup/EIGENSOFT/EIG-6.1.4.tar.gz
7. http://gnu.mirror.vexxhost.com/gsl/gsl-1.6.tar.gz
8. https://github.com/samtools/htslib.git
9. https://nodejs.org/dist/v7.0.0/node-v7.0.0-linux-x64.tar.xz
10. http://download.redis.io/releases/redis-3.2.5.tar.gz
11. https://www.cog-genomics.org/static/bin/plink161010/plink_linux_x86_64.zip
12. https://github.com/samtools/samtools.git

## Docker
Чтобы подготовить контейнер:
```
docker build -t lhmg-frozen .
```

Чтобы запустить контейнер:
```
docker run -v /localPathToYourData:/pathInContainerToYourData -it lhmg-frozen 
```