@cls
@TITLE C Dev Box
SET CURRFOLDER=%cd%

docker stop cdevbox-instance
docker rm   cdevbox-instance

docker build -t cdevbox-container:latest .
docker run --rm -ti --privileged -v %cd%\src\:/src:rw --name cdevbox-instance cdevbox-container
