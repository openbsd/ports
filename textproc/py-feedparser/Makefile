# $OpenBSD: Makefile,v 1.28 2021/11/03 16:02:40 sthen Exp $

COMMENT=	RSS and Atom feeds parser written in Python

MODPY_EGG_VERSION=	6.0.8
DISTNAME=	feedparser-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	textproc

HOMEPAGE=	https://github.com/kurtmckee/feedparser

# BSD-2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_SETUPTOOLS= Yes
MODPY_PYTEST_ARGS= tests/runtests.py

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
