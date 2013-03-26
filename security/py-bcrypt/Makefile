# $OpenBSD: Makefile,v 1.1.1.1 2013/03/26 21:37:26 sthen Exp $

COMMENT=	bcrypt blowfish password hashing for Python

MODPY_EGG_VERSION= 0.3
DISTNAME=	py-bcrypt-${MODPY_EGG_VERSION}

CATEGORIES=	security

HOMEPAGE=	https://code.google.com/p/py-bcrypt/

# ISC/BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://py-bcrypt.googlecode.com/files/

MODULES=	lang/python
MODPY_SETUPTOOLS= Yes
TEST_DEPENDS=	${BUILD_PKGPATH}

do-test:
	cd ${WRKSRC}/test && ${MODPY_BIN} ./test.py

.include <bsd.port.mk>
