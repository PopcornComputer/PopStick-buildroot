################################################################################
#
# gadget-init-scripts
#
################################################################################

GADGET_INIT_SCRIPTS_VERSION = 0.1
GADGET_INIT_SCRIPTS_SITE = $(BR2_EXTERNAL)/package/gadget-init-scripts/files
GADGET_INIT_SCRIPTS_SITE_METHOD = local
GADGET_INIT_SCRIPTS_LICENSE = MIT

####

ifeq ($(strip $(BR2_PACKAGE_GADGET_INIT_SCRIPTS_USB_GADGET)),y)
define GADGET_INIT_SCRIPTS_INSTALL_USB_GADGET
	$(INSTALL) -D -m 700 $(@D)/etc/init.d/S34_usb_gadget $(TARGET_DIR)/etc/init.d/
	$(INSTALL) -d -m 755 $(TARGET_DIR)/etc/connman
	$(INSTALL) -D -m 644 $(@D)/etc/connman/main.conf $(TARGET_DIR)/etc/connman/
	$(INSTALL) -D -m 644 $(@D)/etc/dnsmasq.conf $(TARGET_DIR)/etc/
	$(INSTALL) -d -m 755 $(TARGET_DIR)/etc/network
	$(INSTALL) -D -m 644 $(@D)/etc/network/interfaces $(TARGET_DIR)/etc/network
	$(INSTALL) -d -m 755 $(TARGET_DIR)/etc/modules-load.d
	$(INSTALL) -D -m 644 $(@D)/etc/modules-load.d/usb_gadget $(TARGET_DIR)/etc/modules-load.d/
endef
GADGET_INIT_SCRIPTS_POST_INSTALL_TARGET_HOOKS += GADGET_INIT_SCRIPTS_INSTALL_USB_GADGET
endif

$(eval $(generic-package))
