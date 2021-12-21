docker-phpmd
============

Run PHP Mess Detector (phpmd) in Docker container

Build
--------------------

Build from `Dockerfile`:

```shell
$ docker build -t 3psy0n/phpmd .
```

Verify build:

```shell
$ docker run --rm -it 3psy0n/phpmd --version
```

Usage
--------------------

1. Install the `3psy0n/phpmd` container (optional - this step is performed by Docker automatically when running the container):

```shell
$ docker pull 3psy0n/phpmd
```

2. Define an bash alias that runs this container whenever `phpmd` is invoked on the command line:

```shell
$ echo "alias phpmd='docker run --rm -it -v \$(pwd):/workspace 3psy0n/phpmd'" >> ~/.bashrc
$ source ~/.bashrc
```

3. Run phpmd as always:

```shell
$ phpmd --version
```
