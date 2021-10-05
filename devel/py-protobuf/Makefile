# $OpenBSD: Makefile,v 1.17 2021/10/05 05:01:15 tb Exp $

COMMENT=		Google data interchange format (protocol buffers)

MODPY_EGG_VERSION=	3.18.0
DISTNAME=		protobuf-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PI_DIR=		p/protobuf
MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR=			python3 

BUILD_DEPENDS=		devel/py-wheel${MODPY_FLAVOR}
RUN_DEPENDS=		devel/py-six${MODPY_FLAVOR}

.include <bsd.port.mk>
