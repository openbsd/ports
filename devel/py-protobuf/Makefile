# $OpenBSD: Makefile,v 1.1.1.1 2018/05/09 10:05:54 ajacoutot Exp $

COMMENT=		Google data interchange format (protocol buffers)

MODPY_EGG_VERSION=	3.5.2
POST=			1
DISTNAME=		protobuf-${MODPY_EGG_VERSION}.post${POST}
PKGNAME=		py-protobuf-${MODPY_EGG_VERSION}pl${POST}

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
