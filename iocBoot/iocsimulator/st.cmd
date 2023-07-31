#!../../bin/linux-x86_64/simulator

< envPaths

# Register all support components
dbLoadDatabase "../../dbd/simulator.dbd"
simulator_registerRecordDeviceDriver(pdbbase) 

iocInit()
