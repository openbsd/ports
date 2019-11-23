# $OpenBSD: Makefile,v 1.12 2019/11/23 21:08:26 kmos Exp $

COMMENT=		python bindings for libsodium/tweetnacl based on ctypes

MODPY_EGG_VERSION=	1.6.1
DISTNAME=		libnacl-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		2

CATEGORIES=		security

HOMEPAGE=		https://libnacl.readthedocs.org/en/latest/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST=		Yes

RUN_DEPENDS=		security/libsodium

FLAVORS=		python3
FLAVOR?=

# PyPI tarball has .pyc files it shouldn't
# https://github.com/saltstack/libnacl/issues/112
pre-test:
	rm ${WRKSRC}/tests/unit/*.pyc
	rm -rf ${WRKSRC}/tests/unit/__pycache__/

.include <bsd.port.mk>
