
##############################################################
#
# LDD
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 7 git contents
LDD_VERSION = 946112bc52f42c9de85a94735505d5d0470735ae #Commit Version number
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-Anshul-99.git
#github link
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

#define LDD_BUILD_CMDS
#	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/misc-modules all
#	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/scull all
#endef

#Add the source of the kernel module.
#If nothing is mentioned, it's assumed that the source
#is at the root of the package
LDD_MODULE_SUBDIRS = misc-modules/
LDD_MODULE_SUBDIRS += scull/


# Add scull & misc-module load/unload scripts
define LDD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/usr/bin
	
	$(INSTALL) -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin

endef	

$(eval $(kernel-module))
#kernel-module only defines post-build and post-isntall hooks. 
#This allows the module to build both kernel modules and user-space components. 
#http://lists.busybox.net/pipermail/buildroot/2015-July/132296.html
$(eval $(generic-package))

