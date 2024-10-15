TOP=../..

include $(TOP)/configure/CONFIG

PROD_IOC = simulator
DBD += simulator.dbd

simulator_DBD += base.dbd

simulator_LIBS += simDetector
simulator_DBD += simDetectorSupport.dbd

simulator_SRCS += simulator_registerRecordDeviceDriver.cpp

simulator_SRCS_DEFAULT += simulatorMain.cpp
simulator_SRCS_vxWorks += -nil-

# Link QSRV (pvAccess Server) if available
ifdef EPICS_QSRV_MAJOR_VERSION
    simulator_LIBS += qsrv
    simulator_LIBS += $(EPICS_BASE_PVA_CORE_LIBS)
    simulator_DBD += PVAServerRegister.dbd
    simulator_DBD += qsrv.dbd
endif

simulator_LIBS += $(EPICS_BASE_IOC_LIBS)

# Load driver dependencies for common areaDetector plugins usage
DBD_NAME = simulator
include $(ADCORE)/ADApp/commonDriverMakefile

include $(TOP)/configure/RULES
