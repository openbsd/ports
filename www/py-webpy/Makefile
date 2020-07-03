# $OpenBSD: Makefile,v 1.17 2020/07/03 21:13:21 sthen Exp $

COMMENT=	web framework for python

MODPY_EGG_VERSION=	0.40
DISTNAME=	web.py-${MODPY_EGG_VERSION}
PKGNAME=	py-webpy-${MODPY_EGG_VERSION}
REVISION=	1

CATEGORIES=	www

HOMEPAGE=	http://webpy.org

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Public Domain, except wsgiserver
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYTEST=	Yes
MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=	textproc/py-markdown${MODPY_FLAVOR} \
		www/py-cheroot${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR ?=

.include <bsd.port.mk>
