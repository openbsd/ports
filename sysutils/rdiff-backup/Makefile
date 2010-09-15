#	$OpenBSD: Makefile,v 1.11 2010/09/15 09:02:50 pea Exp $

COMMENT = 	incremental backup

MODPY_EGG_VERSION =	1.2.8
DISTNAME =	rdiff-backup-${MODPY_EGG_VERSION}
REVISION =	2
CATEGORIES =	sysutils

HOMEPAGE = 	http://www.nongnu.org/rdiff-backup/

MAINTAINER = 	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM = 	Yes
PERMIT_PACKAGE_FTP = 	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP =	Yes

LIB_DEPENDS += 		rsync::net/librsync

MASTER_SITES = 		${MASTER_SITE_SAVANNAH:=rdiff-backup/}

MODULES	= 		lang/python

NO_REGRESS = 		Yes

.include <bsd.port.mk>
