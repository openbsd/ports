# $OpenBSD: Makefile,v 1.8 2016/01/08 13:17:15 jasper Exp $

COMMENT=	extensions to the Python unit testing framework

MODPY_EGG_VERSION= 1.8.1
DISTNAME=	testtools-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel
REVISION=	0

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_SETUPTOOLS= Yes
BUILD_DEPENDS=	devel/py-pbr${MODPY_FLAVOR}
RUN_DEPENDS=	devel/py-extras${MODPY_FLAVOR}
TEST_DEPENDS=	${RUN_DEPENDS}

FLAVORS=	python3
FLAVOR?=

# needs traceback2, python-mimeparse, newer unittest2
NO_TEST=	Yes

.include <bsd.port.mk>
