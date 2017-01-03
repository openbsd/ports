# $OpenBSD: Makefile,v 1.3 2017/01/03 19:26:59 landry Exp $

COMMENT=	python bindings to libstatgrab

MODPY_EGG_VERSION =	0.7
DISTNAME=	pystatgrab-${MODPY_EGG_VERSION}
PKGNAME=	py-statgrab-${MODPY_EGG_VERSION}
CATEGORIES=	sysutils
REVISION=	0

HOMEPAGE=	http://www.i-scream.org/pystatgrab/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://ftp.i-scream.org/pub/i-scream/pystatgrab/ \
		http://ftp.uk.i-scream.org/pub/i-scream/pystatgrab/

MODULES =	lang/python

FLAVORS=	python3
FLAVOR?=

LIB_DEPENDS=	sysutils/libstatgrab>=0.91
WANTLIB =	pthread statgrab ${MODPY_WANTLIB}
TEST_DEPENDS=	${BUILD_PKGPATH}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} test.py

.include <bsd.port.mk>
