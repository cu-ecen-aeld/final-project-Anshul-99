
##############################################################
#
# FINAL-PROJECT
#
##############################################################

FINAL_PROJECT_VERSION = 6b3b04a5299e5f927d29103ddb9bb395db710073 #Commit Version number
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
FINAL_PROJECT_SITE = git@github.com:cu-ecen-aeld/finalproject-vishal-anshul-shared.git
#github link
FINAL_PROJECT_SITE_METHOD = git
FINAL_PROJECT_GIT_SUBMODULES = YES

define FINAL_PROJECT_BUILD_CMDS
	#$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/sensors all
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/server all
endef

define FINAL_PROJECT_INSTALL_TARGET_CMDS
	#$(INSTALL) -m 0755 $(@D)/sensors/light_sensor $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/server/server $(TARGET_DIR)/usr/bin
endef	

$(eval $(generic-package))
