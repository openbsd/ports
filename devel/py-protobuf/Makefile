# $OpenBSD: Makefile,v 1.7 2020/09/08 06:30:48 tb Exp $

COMMENT=		Google data interchange format (protocol buffers)

MODPY_EGG_VERSION=	3.13.0
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
FLAVOR ?=

BUILD_DEPENDS=		devel/py-wheel${MODPY_FLAVOR}
RUN_DEPENDS=		devel/py-six${MODPY_FLAVOR}

.include <bsd.port.mk>
