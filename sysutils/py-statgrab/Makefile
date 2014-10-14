# $OpenBSD: Makefile,v 1.1.1.1 2014/10/14 09:45:19 landry Exp $

COMMENT=	python bindings to libstatgrab

MODPY_EGG_VERSION =	0.6
DISTNAME=	pystatgrab-${MODPY_EGG_VERSION}
PKGNAME=	py-statgrab-${MODPY_EGG_VERSION}
CATEGORIES=	sysutils

HOMEPAGE=	http://www.i-scream.org/pystatgrab/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	lang/python

MASTER_SITES=	http://ftp.i-scream.org/pub/i-scream/pystatgrab/ \
		http://ftp.uk.i-scream.org/pub/i-scream/pystatgrab/

LIB_DEPENDS=	sysutils/libstatgrab>=0.91
WANTLIB =	pthread statgrab ${MODPY_WANTLIB}
TEST_DEPENDS=	${BUILD_PKGPATH}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} test.py

.include <bsd.port.mk>
