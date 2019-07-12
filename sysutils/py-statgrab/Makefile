# $OpenBSD: Makefile,v 1.6 2019/07/12 20:49:50 sthen Exp $

COMMENT=	python bindings to libstatgrab

MODPY_EGG_VERSION =	0.7
DISTNAME=	pystatgrab-${MODPY_EGG_VERSION}
PKGNAME=	py-statgrab-${MODPY_EGG_VERSION}
CATEGORIES=	sysutils
REVISION=	2

HOMEPAGE=	http://www.i-scream.org/pystatgrab/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB =	pthread statgrab ${MODPY_WANTLIB}

MASTER_SITES=	http://ftp.i-scream.org/pub/i-scream/pystatgrab/ \
		http://ftp.uk.i-scream.org/pub/i-scream/pystatgrab/

MODULES =	lang/python

FLAVORS=	python3
FLAVOR?=

LIB_DEPENDS=	sysutils/libstatgrab>=0.91
TEST_DEPENDS=	${BUILD_PKGPATH}

# distributed statgrab.c needs rebuilding with newer cython for py37
BUILD_DEPENDS=	lang/cython${MODPY_FLAVOR}

post-extract:
	rm ${WRKSRC}/statgrab.c

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} test.py

.include <bsd.port.mk>
