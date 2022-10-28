################################################################################
#
# PopStick Documentation
#
################################################################################

POPSTICK_DOCS_VERSION = a84a27d361ef3f263a889d17a79db15c5c71b864
POPSTICK_DOCS_SITE = https://github.com/PopcornComputer/PopStick
POPSTICK_DOCS_SITE_METHOD = git

ifeq ($(strip $(BR2_PACKAGE_POPSTICK_DOCS)),y)
define POPSTICK_DOCS_EXTRA_INSTALL
  $(INSTALL) -D -m 0755 $(POPSTICK_DOCS_DIR)/docs/index.html $(TARGET_DIR)/var/www/index.html
  $(INSTALL) -D -m 0755 $(POPSTICK_DOCS_DIR)/docs/images/favicon.svg $(TARGET_DIR)/var/www/images/favicon.svg 
  $(INSTALL) -D -m 0755 $(POPSTICK_DOCS_DIR)/docs/README.md $(TARGET_DIR)/var/www/README.md
endef
POPSTICK_DOCS_POST_INSTALL_TARGET_HOOKS += POPSTICK_DOCS_EXTRA_INSTALL
endif

$(eval $(generic-package))
