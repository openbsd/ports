# $OpenBSD: Makefile,v 1.15 2019/10/04 09:57:43 kevlo Exp $

COMMENT=	web framework for python

MODPY_EGG_VERSION=	0.40
DISTNAME=	web.py-${MODPY_EGG_VERSION}
PKGNAME=	py-webpy-${MODPY_EGG_VERSION}

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
