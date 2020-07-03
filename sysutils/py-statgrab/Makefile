# $OpenBSD: Makefile,v 1.8 2020/07/03 21:13:11 sthen Exp $

COMMENT=	python bindings to libstatgrab

MODPY_EGG_VERSION =	0.7
DISTNAME=	pystatgrab-${MODPY_EGG_VERSION}
PKGNAME=	py-statgrab-${MODPY_EGG_VERSION}
CATEGORIES=	sysutils
REVISION=	3

HOMEPAGE=	http://www.i-scream.org/pystatgrab/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB =	pthread statgrab ${MODPY_WANTLIB}

MASTER_SITES=	http://ftp.i-scream.org/pub/i-scream/pystatgrab/ \
		http://ftp.uk.i-scream.org/pub/i-scream/pystatgrab/

MODULES =	lang/python

FLAVORS=	python3
FLAVOR?=

MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	test.py

TESTLIBDIR =		lib.openbsd-${OSREV}-${ARCH}-${MODPY_VERSION}
TEST_ENV +=		PYTHONPATH=${TESTLIBDIR}

LIB_DEPENDS=	sysutils/libstatgrab>=0.91

# distributed statgrab.c needs rebuilding with newer cython for py37
BUILD_DEPENDS=	lang/cython${MODPY_FLAVOR}

post-extract:
	rm ${WRKSRC}/statgrab.c

.include <bsd.port.mk>
