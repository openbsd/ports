# $OpenBSD: Makefile.inc,v 1.1.1.1 2011/06/09 17:08:14 sthen Exp $

COMMENT ?=	firmware binary images for ${FW_DRIVER}(4) driver

DISTNAME ?=	${FW_DRIVER}-${FW_VER}
DIST_SUBDIR =	firmware
PKGNAME ?=	${FW_DRIVER}-firmware-${FW_VER}
EXTRACT_SUFX ?=	.tgz

CATEGORIES +=	sysutils/firmware

PERMIT_PACKAGE_CDROM ?=	  proprietary
PERMIT_PACKAGE_FTP ?=	  proprietary
PERMIT_DISTFILES_CDROM ?= proprietary
PERMIT_DISTFILES_FTP ?=	  proprietary

MASTER_SITES ?=	http://firmware.openbsd.org/firmware-dist/

PKG_ARCH ?=	*
NO_BUILD ?=	Yes
NO_REGRESS ?=	Yes

PREFIX ?=	/etc
WRKDIST ?=	${WRKDIR}
