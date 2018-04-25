# $OpenBSD: Makefile,v 1.4 2018/04/25 13:35:12 jasper Exp $

COMMENT=		Python wrapper around the CZMQ zeromq bindings

MODPY_EGG_VERSION=	0.0.4
DISTNAME=		pyczmq-${MODPY_EGG_VERSION}
PKGNAME=		${DISTNAME:S/py/py-/}
REVISION=		1

GH_COMMIT=		35d74fb8c01d78c5072d510e02929c63d533d6a2
GH_PROJECT=		pyczmq
GH_ACCOUNT=		zeromq

CATEGORIES=		net devel

HOMEPAGE=		https://github.com/zeromq/pyczmq/

# LGPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/py-cffi \
			net/czmq
TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR} \
			${RUN_DEPENDS}

MODPY_SETUPTOOLS=	Yes

.include <bsd.port.mk>
