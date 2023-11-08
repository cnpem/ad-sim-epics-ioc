TOP=../..

include $(TOP)/configure/CONFIG

PROD_IOC = simulator
DBD += simulator.dbd

simulator_DBD += base.dbd

simulator_LIBS += simDetector
simulator_DBD += simDetectorSupport.dbd

simulator_LIBS += NDPluginSSCPimega
simulator_DBD += NDPluginSSCPimega.dbd

simulator_SRCS += simulator_registerRecordDeviceDriver.cpp

simulator_SRCS_DEFAULT += simulatorMain.cpp
simulator_SRCS_vxWorks += -nil-

simulator_LIBS += $(EPICS_BASE_IOC_LIBS)

# Load driver dependencies for common areaDetector plugins usage
DBD_NAME = simulator
include $(ADCORE)/ADApp/commonDriverMakefile

include $(TOP)/configure/RULES
