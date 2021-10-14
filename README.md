Open `msys2` shell and clone this repository preserving line endings (assuming you have core.autocrlf=true in global config):

```
git clone https://github.com/mugiseyebrows/msys2-python-cryptography.git --config core.eol=lf
cd msys2-python-cryptography
```

Install tools 

```
sh install-devtools.sh
```

Build and install packages

```
sh build-and-install.sh
```