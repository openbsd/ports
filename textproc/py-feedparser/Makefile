# $OpenBSD: Makefile,v 1.16 2013/08/24 20:01:34 bcallah Exp $

COMMENT=	RSS and Atom feeds parser written in Python

MODPY_EGG_VERSION=	5.1.3
DISTNAME=	feedparser-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	textproc

HOMEPAGE=	https://code.google.com/p/feedparser/

MAINTAINER=	Romain Gaillegue <romain@biscotte.net>

# BSD-2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://feedparser.googlecode.com/files/

MODULES=	lang/python
MODPY_SETUPTOOLS=	Yes

do-test:
	cd ${WRKSRC}/feedparser/ && ${MODPY_BIN} feedparsertest.py

.include <bsd.port.mk>
