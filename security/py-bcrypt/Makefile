# $OpenBSD: Makefile,v 1.5 2015/09/29 10:52:34 sthen Exp $

COMMENT=	bcrypt blowfish password hashing for Python

MODPY_EGG_VERSION= 0.4
DISTNAME=	py-bcrypt-${MODPY_EGG_VERSION}

REVISION =	2

CATEGORIES=	security

HOMEPAGE=	https://code.google.com/p/py-bcrypt/

# ISC/BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MASTER_SITES=	https://py-bcrypt.googlecode.com/files/

MODULES=	lang/python
MODPY_SETUPTOOLS= Yes

FLAVORS=        python3
FLAVOR?=

TEST_DEPENDS=	${BUILD_PKGPATH}

do-test:
	cd ${WRKSRC}/test && ${MODPY_BIN} ./test.py

.include <bsd.port.mk>
