$path = $(pwd)
docker run -ti --rm --volume $path/:/git alpine/git add .
docker run -ti --rm --volume $path/:/git alpine/git commit -m "Add windows support"
docker run -ti --rm --volume $path/:/git alpine/git push https://github.com/q0015300153/service-lnmp.git master:master
