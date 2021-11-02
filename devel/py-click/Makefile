# $OpenBSD: Makefile,v 1.14 2021/11/02 00:00:27 sthen Exp $

COMMENT=	command line library for Python

# py-elasticsearch-curator-5.8.1 requires click <7.0; when updated to 5.8.4
# that will allow 7.x (but not 8.x yet)
MODPY_EGG_VERSION=6.7
DISTNAME=	click-${MODPY_EGG_VERSION}
PKGNAME=	py-click-${MODPY_EGG_VERSION}
REVISION=	6

CATEGORIES=	devel

HOMEPAGE=	https://click.palletsprojects.com/

# BSD
PERMIT_PACKAGE=	Yes

MODPY_PI =	Yes

MODULES=	lang/python

MODPY_SETUPTOOLS= Yes
MODPY_PYTEST=	Yes

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
