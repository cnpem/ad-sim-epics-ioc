# EPICS IOC for ADSimDetector

This repository contains the EPICS Input/Output Controller (IOC) used at LNLS
for debugging, testing and prototyping based on [areaDetector simulation
detector (ADSimDetector)](https://github.com/areaDetector/ADSimDetector).

## Running the IOC

You can use the following command to run it in the background using the default
start-up script from [epics-in-docker][epics-in-docker].

```bash
docker compose up -d
```

You can then access the IOC shell through [the Unix socket created][iocsh].

[epics-in-docker]: https://github.com/cnpem/epics-in-docker
[iocsh]: https://github.com/cnpem/epics-in-docker/tree/v0.4.0#accessing-iocsh-inside-containers

## Building the IOC image

You can build the IOC with the following command:

```bash
docker compose build
```
