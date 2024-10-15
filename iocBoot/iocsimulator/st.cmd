#!/opt/ad-sim-epics-ioc/bin/linux-x86_64/simulator
# -*- container-image: ghcr.io/cnpem/ad-sim-epics-ioc

cd /opt/ad-sim-epics-ioc/iocBoot/iocsimulator

< envPaths

# Register all support components
dbLoadDatabase "../../dbd/simulator.dbd"
simulator_registerRecordDeviceDriver(pdbbase) 

# IOC and device specific configuration
epicsEnvSet("PREFIX", "$(PREFIX=SIM:)")
epicsEnvSet("MAX_IMAGE_WIDTH", 1024)
epicsEnvSet("MAX_IMAGE_HEIGHT", 1024)
epicsEnvSet("MAX_IMAGE_PIXELS", 3145728)

# Define simulator driver port
epicsEnvSet("PORT", "SIM")
epicsEnvSet("EPICS_CA_AUTO_ARRAY_BYTES", "YES")
# Include ADCore to path for loading its databases relatively
epicsEnvSet("EPICS_DB_INCLUDE_PATH", "$(ADCORE)/db")

simDetectorConfig("$(PORT)", $(MAX_IMAGE_WIDTH), $(MAX_IMAGE_HEIGHT), 1, 0, 0)
dbLoadRecords("$(ADSIMDETECTOR)/db/simDetector.template", "P=$(PREFIX), R=cam1:, PORT=$(PORT), ADDR=0, TIMEOUT=1")

# Trace error and warning messages
asynSetTraceMask("$(PORT)", 0, ERROR | WARNING)

# Configure areaDetector plugins
epicsEnvSet("QSIZE", 20)
epicsEnvSet("QSIZE_HDF5", 50)

< plugins.cmd

iocInit()
