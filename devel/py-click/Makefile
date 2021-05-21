# $OpenBSD: Makefile,v 1.11 2021/05/21 19:50:24 kmos Exp $

COMMENT=	command line library for Python

MODPY_EGG_VERSION=6.7
DISTNAME=	click-${MODPY_EGG_VERSION}
PKGNAME=	py-click-${MODPY_EGG_VERSION}
REVISION=	3

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
