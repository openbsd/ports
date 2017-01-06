# $OpenBSD: Makefile,v 1.20 2017/01/06 18:17:33 feinerer Exp $

COMMENT=	RSS and Atom feeds parser written in Python

MODPY_EGG_VERSION=	5.2.1
DISTNAME=	feedparser-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	textproc

HOMEPAGE=	https://github.com/kurtmckee/feedparser

MAINTAINER=	Romain Gaillegue <romain@biscotte.net>

# BSD-2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_SETUPTOOLS= Yes

FLAVORS=	python3
FLAVOR?=

do-test:
	cd ${WRKSRC}/feedparser/ && ${MODPY_BIN} feedparsertest.py

.include <bsd.port.mk>
