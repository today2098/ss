# ss
Shell Scripts working on Ubuntu.


## Requirement

- Ubuntu 20.04 (on WSL2)

\* I done an operation confirmation on only Ubuntu (on WSL2).


## Usage

```
$ cd ss/src
$ bash ./iupdate.sh
```

or

```
$ cd ss/src
$ chmod 755 iupdate.sh
$ ./iupdate.sh
```

If you want to be able to use it for command anywhere, put the script on a path opened.

```
$ cd ss/src
$ cp iupdate.sh $HOME/bin
$ cd $HOME/bin
$ chmod 755 iupdate.sh
$ iupdate.sh
```


## Description

|Name|Description|
|----|----|
|diary.sh|To keep a diary.|
|file_swap.sh|To swap a couple of files.|
|itree.sh|To display directory construct like tree.|
|iupdate.sh|To update and upgrade OS (Ubuntu).|
