# $OpenBSD: Makefile,v 1.16 2011/09/16 11:41:39 espie Exp $

COMMENT =	encrypted backup using rsync algorithm

MODPY_EGG_VERSION = 0.6.10
DISTNAME =	duplicity-${MODPY_EGG_VERSION}
REVISION=	1

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

WANTLIB +=	rsync
LIB_DEPENDS +=	net/librsync
RUN_DEPENDS +=	net/py-boto \
		net/ncftp \
		security/py-gnupg

MAKE_ENV +=	LIBRSYNC_DIR=${LOCALBASE}

USE_GROFF =	Yes
NO_REGRESS =	Yes

.include <bsd.port.mk>
