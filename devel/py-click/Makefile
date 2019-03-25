# $OpenBSD: Makefile,v 1.6 2019/03/25 14:29:50 kn Exp $

COMMENT=	command line library for Python

MODPY_EGG_VERSION=6.7
DISTNAME=	click-${MODPY_EGG_VERSION}
PKGNAME=	py-click-${MODPY_EGG_VERSION}

CATEGORIES=	devel

HOMEPAGE=	http://click.pocoo.org/6/

MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =	Yes

MODULES=	lang/python

MODPY_SETUPTOOLS= Yes
MODPY_PYTEST=	Yes

FLAVORS=	python3
FLAVOR?=

.include <bsd.port.mk>
