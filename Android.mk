# "LOCAL_PATH" contains the path to the device tree (ex: /device/samsung/gtoxx)
LOCAL_PATH := $(call my-dir)
# if statement that will be true if the user requested to build that device.
ifeq ($(TARGET_DEVICE),gto)
# Other makefiles in the device-tree
include $(call all-makefiles-under,$(LOCAL_PATH))
# Clean variables
include $(CLEAR_VARS)
# Close the if statement.
endif