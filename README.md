omv-extras.org .deb releases

* Install from command line as root. If you are not root already, change to root first:
```console
 sudo su -
 wget -O - https://github.com/OpenMediaVault-Plugin-Developers/packages/raw/master/install | bash
```

* If you don't want to use root, you must use sudo for the bash execution.  But if this is the first time you have run sudo, you will not see the sudo prompt for your password.  Use sudo for both commands:
```console
 sudo wget -O - https://github.com/OpenMediaVault-Plugin-Developers/packages/raw/master/install | sudo bash
```
