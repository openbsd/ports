# $OpenBSD: Makefile,v 1.15 2013/08/07 21:32:42 naddy Exp $

COMMENT=	RSS and Atom feeds parser written in Python

V=		5.0.1
DISTNAME=	feedparser-${V}
PKGNAME=	py-${DISTNAME}
REVISION=	2
CATEGORIES=	textproc

HOMEPAGE=	http://www.feedparser.org/

MAINTAINER=	Romain Gaillegue <romain@biscotte.net>

# BSD-2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://feedparser.googlecode.com/files/

MODULES=	lang/python

do-test:
	cd ${WRKSRC}/feedparser/ && ${MODPY_BIN} feedparsertest.py

.include <bsd.port.mk>
