# $OpenBSD: Makefile.inc,v 1.2 2011/06/12 00:20:51 sthen Exp $

COMMENT ?=	firmware binary images for ${FW_DRIVER}(4) driver

DISTNAME ?=	${FW_DRIVER}-${FW_VER}
DIST_SUBDIR =	firmware
PKGNAME ?=	${FW_DRIVER}-firmware-${FW_VER}

CATEGORIES +=	sysutils/firmware

PERMIT_PACKAGE_CDROM ?=	  proprietary
PERMIT_PACKAGE_FTP ?=	  proprietary
PERMIT_DISTFILES_CDROM ?= proprietary
PERMIT_DISTFILES_FTP ?=	  proprietary

MASTER_SITES ?=	http://firmware.openbsd.org/firmware-dist/

PKG_ARCH ?=	*
PREFIX ?=	/etc
NO_BUILD ?=	Yes
NO_REGRESS ?=	Yes
