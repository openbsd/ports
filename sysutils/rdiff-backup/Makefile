#	$OpenBSD: Makefile,v 1.22 2019/07/12 21:15:36 sthen Exp $

COMMENT = 	incremental backup

MODPY_EGG_VERSION =	1.2.8
DISTNAME =	rdiff-backup-${MODPY_EGG_VERSION}
REVISION =	8
CATEGORIES =	sysutils

HOMEPAGE = 	http://www.nongnu.org/rdiff-backup/

MAINTAINER = 	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=		rsync pthread ${MODPY_WANTLIB}

LIB_DEPENDS += 		net/librsync

MASTER_SITES = 		${MASTER_SITE_SAVANNAH:=rdiff-backup/}

MODULES	= 		lang/python

NO_TEST = 		Yes

.include <bsd.port.mk>
