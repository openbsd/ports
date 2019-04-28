# $OpenBSD: Makefile,v 1.2 2019/04/28 20:51:36 sthen Exp $

COMMENT=		Google data interchange format (protocol buffers)

MODPY_EGG_VERSION=	3.5.2
POST=			1
DISTNAME=		protobuf-${MODPY_EGG_VERSION}.post${POST}
PKGNAME=		py-protobuf-${MODPY_EGG_VERSION}pl${POST}
REVISION=		0

CATEGORIES=		devel

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PI_DIR=		p/protobuf
MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR ?=

RUN_DEPENDS=		devel/py-six${MODPY_FLAVOR}

.include <bsd.port.mk>
