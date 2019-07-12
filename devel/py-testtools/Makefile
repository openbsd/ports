# $OpenBSD: Makefile,v 1.12 2019/07/12 20:45:54 sthen Exp $

COMMENT=	extensions to the Python unit testing framework

MODPY_EGG_VERSION= 1.8.1
DISTNAME=	testtools-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel
REVISION=	2

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_SETUPTOOLS= Yes
BUILD_DEPENDS=	devel/py-pbr${MODPY_FLAVOR}
RUN_DEPENDS=	devel/py-extras${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR?=

# needs traceback2, python-mimeparse, newer unittest2
NO_TEST=	Yes

.include <bsd.port.mk>
