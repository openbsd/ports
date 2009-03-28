# $OpenBSD: Makefile,v 1.7 2009/03/28 18:12:50 naddy Exp $

COMMENT =	encrypted backup using rsync algorithm

MODPY_EGG_VERSION = 0.5.08
DISTNAME =	duplicity-${MODPY_EGG_VERSION}
PKGNAME =	${DISTNAME}p0

CATEGORIES =	sysutils

HOMEPAGE =	http://www.nongnu.org/duplicity/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=duplicity/}

MAINTAINER =	Bruno Bigras <bruno@burnbox.net>

# GPLv3
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
