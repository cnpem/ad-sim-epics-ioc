#!../../bin/linux-x86_64/simulator

#- You may have to change simulator to something else
#- everywhere it appears in this file

#< envPaths

## Register all support components
dbLoadDatabase "../../dbd/simulator.dbd"
simulator_registerRecordDeviceDriver(pdbbase) 

## Load record instances
#dbLoadRecords("../../db/simulator.db","user=root")

iocInit()

## Start any sequence programs
#seq sncsimulator,"user=root"
