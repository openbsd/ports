# $OpenBSD: Makefile,v 1.9 2020/05/27 21:46:14 sebastia Exp $

COMMENT=	command line library for Python

MODPY_EGG_VERSION=6.7
DISTNAME=	click-${MODPY_EGG_VERSION}
PKGNAME=	py-click-${MODPY_EGG_VERSION}
REVISION=	1

CATEGORIES=	devel

HOMEPAGE=	http://click.pocoo.org/6/

# BSD
PERMIT_PACKAGE=	Yes

MODPY_PI =	Yes

MODULES=	lang/python

MODPY_SETUPTOOLS= Yes
MODPY_PYTEST=	Yes

FLAVORS=	python3
FLAVOR?=

.include <bsd.port.mk>
