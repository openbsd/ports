# $OpenBSD: Makefile,v 1.8 2018/02/26 20:18:16 espie Exp $

COMMENT=		python bindings for libsodium/tweetnacl based on ctypes

MODPY_EGG_VERSION=	1.6.1
DISTNAME=		libnacl-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		security

HOMEPAGE=		https://libnacl.readthedocs.org/en/latest/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

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
