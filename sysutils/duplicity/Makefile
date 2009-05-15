# $OpenBSD: Makefile,v 1.8 2009/05/15 16:36:50 jim Exp $

COMMENT =	encrypted backup using rsync algorithm

MODPY_EGG_VERSION = 0.5.17
DISTNAME =	duplicity-${MODPY_EGG_VERSION}

CATEGORIES =	sysutils

HOMEPAGE =	http://www.nongnu.org/duplicity/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=duplicity/}

MAINTAINER =	Jim Razmus II <jim@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	lang/python

LIB_DEPENDS +=	rsync::net/librsync
RUN_DEPENDS +=	::net/py-boto \
		::net/ncftp \
		::security/py-gnupg

MAKE_ENV +=	LIBRSYNC_DIR=${LOCALBASE}

NO_REGRESS =	Yes

.include <bsd.port.mk>
