# $OpenBSD: Makefile,v 1.25 2020/07/03 21:13:14 sthen Exp $

COMMENT=	RSS and Atom feeds parser written in Python

MODPY_EGG_VERSION=	5.2.1
DISTNAME=	feedparser-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	textproc
REVISION=	3

HOMEPAGE=	https://github.com/kurtmckee/feedparser

# BSD-2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_SETUPTOOLS= Yes

FLAVORS=	python3
FLAVOR?=

do-test:
	cd ${WRKSRC}/feedparser/ && ${MODPY_BIN} feedparsertest.py

.include <bsd.port.mk>
