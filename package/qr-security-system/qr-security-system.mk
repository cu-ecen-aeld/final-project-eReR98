
##############################################################
#
# QR-SECURITY-SYSTEM
#
##############################################################

QR_SECURITY_SYSTEM_VERSION = ec6efa8b9c60861672e28eb0f540bf7116cc2247
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
QR_SECURITY_SYSTEM_SITE = git@github.com:eReR98/QR-Capture-Code.git
QR_SECURITY_SYSTEM_SITE_METHOD = git
QR_SECURITY_SYSTEM_GIT_SUBMODULES = YES

define QR_SECURITY_SYSTEM_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/*.py $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/qr-security-system-start-stop.sh $(TARGET_DIR)/etc/init.d/S99qrsecuritysystem
endef

$(eval $(generic-package))
