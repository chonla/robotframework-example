# Robot framework example

## Requirement
1. Install python 2 (https://www.python.org/downloads/). -- So far, selenium2library does not support Python3.
2. Required pip should come with Python 2.7.9 or later, otherwise install pip (https://pip.pypa.io/en/stable/installing/).
3. Update pip and setup tool by running ```pip install --upgrade pip setuptools```, or ```python -m pip install --upgrade pip setuptools``` if you are experiencing a permission problem during upgrading.

## Troubleshoot
If you are installing python to your Microsoft Windows, you may experience an error during installation. See this guide (https://github.com/chonla/install-python-on-windows) for detail.

## Install

Save the text in the box below to ```requirement.txt``` and run ```pip install -r requirement.txt``` to install requirement.

```
robotframework
robotframework-selenium2library
requests
selenium
```

## Execute test cases

```
pybot ./example
```

## Note

Some test cases require a testing web site in ```./web``` directory. Go there and start web server on port ```8888```.

Enjoy your first robot!
