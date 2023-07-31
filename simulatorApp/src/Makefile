TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = simulator
# simulator.dbd will be created and installed
DBD += simulator.dbd

# simulator.dbd will be made up from these files:
simulator_DBD += base.dbd

# Include dbd files from all support applications:
#simulator_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#simulator_LIBS += xxx

# simulator_registerRecordDeviceDriver.cpp derives from simulator.dbd
simulator_SRCS += simulator_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
simulator_SRCS_DEFAULT += simulatorMain.cpp
simulator_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#simulator_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
simulator_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

