# $OpenBSD: Makefile,v 1.27 2014/04/03 07:59:35 ajacoutot Exp $

COMMENT =	encrypted backup using rsync algorithm

MODPY_EGG_VERSION = 0.6.23
DISTNAME =	duplicity-${MODPY_EGG_VERSION}

CATEGORIES =	sysutils

HOMEPAGE =	http://www.nongnu.org/duplicity/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=duplicity/}

MAINTAINER =	Jim Razmus II <jim@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python

WANTLIB +=	pthread rsync ${MODPY_WANTLIB}

LIB_DEPENDS +=	net/librsync \
		${MODPY_LIB_DEPENDS}

RUN_DEPENDS +=	net/py-boto \
		net/ncftp \
		security/py-gnupg \
		security/py-paramiko

MAKE_ENV +=	LIBRSYNC_DIR=${LOCALBASE}

# Tests in ${WRKSRC}/testing directory require bash to run and they all fail
NO_TEST =	Yes

# XXX 600 mode prevents from reading the man page;
# check if still required at next update
post-extract:
	chmod 644 ${WRKSRC}/bin/*.1

.include <bsd.port.mk>
