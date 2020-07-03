# $OpenBSD: Makefile,v 1.5 2020/07/03 21:12:48 sthen Exp $

COMMENT=		Google data interchange format (protocol buffers)

MODPY_EGG_VERSION=	3.9.1
DISTNAME=		protobuf-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

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
