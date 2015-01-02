# $OpenBSD: Makefile,v 1.32 2015/01/02 20:11:18 jca Exp $

COMMENT =	encrypted backup using rsync algorithm

MODPY_EGG_VERSION = 0.6.25
DISTNAME =	duplicity-${MODPY_EGG_VERSION}
REVISION =	0

CATEGORIES =	sysutils

HOMEPAGE =	http://www.nongnu.org/duplicity/
MASTER_SITES =	${MASTER_SITE_SAVANNAH:=duplicity/}

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

WANTLIB +=	pthread rsync ${MODPY_WANTLIB}

LIB_DEPENDS +=	net/librsync \
		${MODPY_LIB_DEPENDS}

RUN_DEPENDS +=	net/py-boto \
		net/ncftp \
		sysutils/py-lockfile

MAKE_ENV +=	LIBRSYNC_DIR=${LOCALBASE}

# Some regression tests are hanging
# TEST_DEPENDS =	devel/py-mock
NO_TEST =	Yes

# XXX 600 mode prevents from reading the man page;
# check if still required at next update
post-extract:
	chmod 644 ${WRKSRC}/bin/*.1

.include <bsd.port.mk>
