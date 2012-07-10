# $OpenBSD: Makefile,v 1.21 2012/07/10 15:01:14 ajacoutot Exp $

COMMENT =	encrypted backup using rsync algorithm

MODPY_EGG_VERSION = 0.6.19
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

WANTLIB +=	rsync ${MODPY_WANTLIB}

LIB_DEPENDS +=	net/librsync \
		${MODPY_LIB_DEPENDS}

RUN_DEPENDS +=	net/py-boto \
		net/ncftp \
		security/py-gnupg

MAKE_ENV +=	LIBRSYNC_DIR=${LOCALBASE}

NO_REGRESS =	Yes

# XXX 600 mode prevents from reading the man page;
# check if still required at next update
post-extract:
	chmod 644 ${WRKSRC}/bin/*.1

.include <bsd.port.mk>
