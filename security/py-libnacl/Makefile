# $OpenBSD: Makefile,v 1.11 2019/07/12 20:49:34 sthen Exp $

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

RUN_DEPENDS=		security/libsodium
TEST_DEPENDS=		security/libsodium

FLAVORS=		python3
FLAVOR?=

do-test:
	cd ${WRKSRC}/tests && \
		${MODPY_BIN} ./runtests.py

.include <bsd.port.mk>
