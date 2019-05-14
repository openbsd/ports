# $OpenBSD: Makefile.inc,v 1.5 2019/05/14 20:04:14 sthen Exp $

COMMENT ?=	firmware binary images for ${FW_DRIVER}(4) driver

DISTNAME ?=	${FW_DRIVER}-${FW_VER}
DIST_SUBDIR =	firmware
PKGNAME ?=	${FW_DRIVER}-firmware-${FW_VER}

CATEGORIES +=	sysutils/firmware

PERMIT_PACKAGE_CDROM ?=	  proprietary
PERMIT_PACKAGE_FTP ?=	  proprietary
PERMIT_DISTFILES_FTP ?=	  proprietary

.if !defined(GH_ACCOUNT)
MASTER_SITES ?=	http://firmware.openbsd.org/firmware-dist/
.endif

PKG_ARCH ?=	*
PREFIX ?=	/etc
NO_BUILD ?=	Yes
NO_TEST ?=	Yes

.if ${PERMIT_PACKAGE_FTP:L:Myes} || ${PERMIT_PACKAGE_CDROM:L:Myes}
#
# This is a special-purpose directory. Packages produced from this should
# not be included in package directories on normal mirrors, but only on
# firmware.openbsd.org mirrors and installed by fw_update.
#
# PERMIT_* should be set so that packages produced during bulk builds do
# not get included in the main package directories.
#
ERRORS += "Fatal: packages for fw_update should not have PERMIT_*=Yes"
.endif
