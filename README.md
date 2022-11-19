# download-ubuntu-packages-and-their-dependencies-recursively-and-install

Solution for installing packages on offline systems without any networking and internet.

Two scripts for:

  1-downloading ubuntu packages and their dependencies recursively and store them.

  2-installing them. 

## How to download ubuntu packages and their dependencies recursively and store them:

1- make a directory, e.g. packages:


2- copy first script there:

```shell
$ cp 1-recursively_download_packages_with_dependencies.sh ./packages
```

3- edit 4th line of code, add wanted packages:


```properties
4: array_of_packages=("git" "python 3" "vlc" "unrar")
```

4-run it!

```shell
$ bash 1-recursively_download_packages_with_dependencies.sh
```

You'll notice that inside ./packages directory, different directories for each package has been created. also there is a ./packages/log.txt which is an overall success or faile status for each package.

Also there are 0_error.txt & 0_log.txt logs inside of each package directory. 0_error.txt is showing errors and 0_log.txt is being used for next step which is installing package and it's dependencies.


## How to install an ubuntu package and its dependencies:

1- copy second script inside package directory:

```shell
$ cp 2-install_packages.sh ./packages/git
```

2- run it!

```shell
$ bash 2-install_packages.sh
```

---

## Developed by APA

<br>
<br>

![ascii_apaـblue.png](ascii_apa_blue.png)
