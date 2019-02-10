# mybusiness-base
A Docker base image for MyBusiness based web applications.

The home for these images is: 
[https://cloud.docker.com/repository/docker/cbmarcum/mybusiness-base](https://cloud.docker.com/repository/docker/cbmarcum/mybusiness-base "MyBusiness-Base on Ducker Hub")

The image is built on Amazon's Corretta JDK 8 image with Apache OpenOffice installed.

## Building the image



Based on instructions from from: [https://docs.docker.com/get-started/part2/](Docker get-started part 2)

Build the temp image (make sure to replace the version with the new one).
```bash
$ docker build --tag=mybusiness-temp:X.X.X .
```

tag the official one for docker hub
```bash
$ docker tag mybusiness-temp:X.X.X cbmarcum/mybusiness-base:X.X.X
```

Login to docker hub
```bash
$ docker login
```

Push the image
```bash
$ docker push cbmarcum/mybusiness-base:X.X.X
```

Delete local temp image


