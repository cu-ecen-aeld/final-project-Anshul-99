
##############################################################
#
# FINAL-PROJECT
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
FINAL_PROJECT_VERSION = db3db8982b00caba65c6fe56361ea9edb446bcb0 #Commit Version number
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
FINAL_PROJECT_SITE = git@github.com:cu-ecen-aeld/finalproject-vishal-anshul-shared.git
#github link
FINAL_PROJECT_SITE_METHOD = git
FINAL_PROJECT_GIT_SUBMODULES = YES

define FINAL_PROJECT_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/sensors all
	#$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/client-vishal all
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/server-new all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define FINAL_PROJECT_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/sensors/temp_humidity $(TARGET_DIR)/usr/bin
	#$(INSTALL) -m 0755 $(@D)/client-vishal/socket_client $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/server-new/server $(TARGET_DIR)/usr/bin
endef	

$(eval $(generic-package))
