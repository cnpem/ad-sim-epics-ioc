TOP=../..

include $(TOP)/configure/CONFIG

PROD_IOC = simulator
DBD += simulator.dbd

simulator_DBD += base.dbd
simulator_SRCS += simulator_registerRecordDeviceDriver.cpp

simulator_SRCS_DEFAULT += simulatorMain.cpp
simulator_SRCS_vxWorks += -nil-

simulator_LIBS += $(EPICS_BASE_IOC_LIBS)

include $(TOP)/configure/RULES
