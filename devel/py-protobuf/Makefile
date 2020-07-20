# $OpenBSD: Makefile,v 1.6 2020/07/20 18:48:57 tim Exp $

COMMENT=		Google data interchange format (protocol buffers)

MODPY_EGG_VERSION=	3.12.2
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

RUN_DEPENDS=		devel/py-six${MODPY_FLAVOR}

.include <bsd.port.mk>
