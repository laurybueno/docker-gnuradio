# GNU Radio in a Docker container

This project aims to have the full GNU Radio and GNU Radio Companion experience from a Docker container. Internally, it takes advantage of PyBOMBS support for Ubuntu to install and update software.

# Usage
To start, run:
```
source activate.sh
```

Run GNU Radio Companion:
```
grc37
```

To build a new image and publish it on Docker Hub:
```
grc-publish
```
