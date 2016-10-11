# $OpenBSD: Makefile,v 1.9 2016/10/11 13:57:08 sthen Exp $

COMMENT=	bcrypt blowfish password hashing for Python

MODPY_EGG_VERSION= 3.1.1
DISTNAME=	bcrypt-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

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

# there's some test scaffolding in setup.py (using py-test), but I don't
# see any actual tests anywhere. trying to use it gives "collected 0 items".
# security/py-passlib has a decent test suite that includes tests of this.
NO_TEST=	Yes

.include <bsd.port.mk>
