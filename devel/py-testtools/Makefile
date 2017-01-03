# $OpenBSD: Makefile,v 1.9 2017/01/03 19:19:49 landry Exp $

COMMENT=	extensions to the Python unit testing framework

MODPY_EGG_VERSION= 1.8.1
DISTNAME=	testtools-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel
REVISION=	1

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
