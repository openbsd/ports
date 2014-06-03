# $OpenBSD: Makefile,v 1.3 2014/06/03 11:35:12 rpointel Exp $

COMMENT=	bcrypt blowfish password hashing for Python

MODPY_EGG_VERSION= 0.4
DISTNAME=	py-bcrypt-${MODPY_EGG_VERSION}

REVISION = 0

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
