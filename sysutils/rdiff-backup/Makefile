#	$OpenBSD: Makefile,v 1.16 2011/09/16 11:41:40 espie Exp $

COMMENT = 	incremental backup

MODPY_EGG_VERSION =	1.2.8
DISTNAME =	rdiff-backup-${MODPY_EGG_VERSION}
REVISION =	4
CATEGORIES =	sysutils

HOMEPAGE = 	http://www.nongnu.org/rdiff-backup/

MAINTAINER = 	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM = 	Yes
PERMIT_PACKAGE_FTP = 	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=		rsync
LIB_DEPENDS += 		net/librsync

MASTER_SITES = 		${MASTER_SITE_SAVANNAH:=rdiff-backup/}

MODULES	= 		lang/python

USE_GROFF =		Yes
NO_REGRESS = 		Yes

.include <bsd.port.mk>
