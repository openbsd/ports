# $OpenBSD: Makefile,v 1.12 2021/08/10 20:43:51 sthen Exp $

COMMENT=	command line library for Python

MODPY_EGG_VERSION=6.7
DISTNAME=	click-${MODPY_EGG_VERSION}
PKGNAME=	py-click-${MODPY_EGG_VERSION}
REVISION=	4

CATEGORIES=	devel

HOMEPAGE=	http://click.pocoo.org/6/

# BSD
PERMIT_PACKAGE=	Yes

MODPY_PI =	Yes

MODULES=	lang/python

MODPY_SETUPTOOLS= Yes
MODPY_PYTEST=	Yes

FLAVORS=	python3
FLAVOR=	python3

.include <bsd.port.mk>
