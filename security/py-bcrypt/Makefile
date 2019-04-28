# $OpenBSD: Makefile,v 1.18 2019/04/28 20:51:51 sthen Exp $

COMMENT=	bcrypt blowfish password hashing for Python

MODPY_EGG_VERSION= 3.1.6
DISTNAME=	bcrypt-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

CATEGORIES=	security

# Apache License 2.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_SETUPTOOLS= Yes

FLAVORS=        python3
FLAVOR?=

RUN_DEPENDS=	devel/py-cffi${MODPY_FLAVOR} \
		devel/py-six${MODPY_FLAVOR}
BUILD_DEPENDS=	${RUN_DEPENDS}

TEST_DEPENDS=	devel/py-test${MODPY_FLAVOR} \
		devel/py-six${MODPY_FLAVOR}

.include <bsd.port.mk>
