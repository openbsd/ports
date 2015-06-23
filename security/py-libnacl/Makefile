# $OpenBSD: Makefile,v 1.1.1.1 2015/06/23 19:25:29 ajacoutot Exp $

COMMENT=		python bindings for libsodium/tweetnacl based on ctypes

MODPY_EGG_VERSION=	1.4.3
DISTNAME=		libnacl-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		security

HOMEPAGE=		https://libnacl.readthedocs.org/en/latest/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI=		Yes

MODULES=		lang/python

RUN_DEPENDS=		security/libsodium

do-test:
	cd ${WRKSRC}/tests && \
		${MODPY_BIN} ./runtests.py

.include <bsd.port.mk>
