# $OpenBSD: Makefile,v 1.15 2020/07/03 21:13:06 sthen Exp $

COMMENT=		python bindings for libsodium/tweetnacl based on ctypes

MODPY_EGG_VERSION=	1.6.1
DISTNAME=		libnacl-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		4

CATEGORIES=		security

HOMEPAGE=		https://libnacl.readthedocs.org/en/latest/

MAINTAINER=		Renaud Allard <renaud@allard.it>

# apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		security/libsodium

# PyPI tarball has .pyc files it shouldn't
# https://github.com/saltstack/libnacl/issues/112
pre-test:
	rm ${WRKSRC}/tests/unit/*.pyc
	rm -rf ${WRKSRC}/tests/unit/__pycache__/

.include <bsd.port.mk>
