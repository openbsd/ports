# $OpenBSD: Makefile,v 1.10 2011/03/16 22:52:10 jasper Exp $

COMMENT=	RSS and Atom feeds parser written in Python

V=		5.0.1
DISTNAME=	feedparser-${V}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	textproc

HOMEPAGE=	http://www.feedparser.org/

MAINTAINER=	Romain Gaillegue <romain@biscotte.net>

# BSD-2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://feedparser.googlecode.com/files/

MODULES=	lang/python

do-regress:
	cd ${WRKSRC}/feedparser/ && ${MODPY_BIN} feedparsertest.py

.include <bsd.port.mk>
