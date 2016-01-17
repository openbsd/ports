# $OpenBSD: Makefile,v 1.35 2016/01/17 05:30:31 shadchin Exp $

# optional dependencies
# py-pyrax

COMMENT =	encrypted backup using rsync algorithm

MODPY_EGG_VERSION = 0.7.06
DISTNAME =	duplicity-${MODPY_EGG_VERSION}

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

RUN_DEPENDS +=	devel/py-pexpect \
		net/ncftp \
		net/py-boto \
		gnupg-<2:security/gnupg \
		sysutils/py-lockfile

MAKE_ENV +=	LIBRSYNC_DIR=${LOCALBASE}

MODPY_ADJ_FILES = bin/duplicity bin/rdiffdir

# Some regression tests are hanging
# TEST_DEPENDS =	devel/py-mock
NO_TEST =	Yes

.include <bsd.port.mk>
