# $OpenBSD: Makefile,v 1.3 2013/03/13 08:12:10 benoit Exp $

COMMENT =	HTML/XML parser that supports invalid markup

MODPY_EGG_VERSION =	4.1.3
DISTNAME =	beautifulsoup4-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =   	www

HOMEPAGE =	http://www.crummy.com/software/BeautifulSoup/
MAINTAINER =	frantisek holop <minusf@obiit.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${HOMEPAGE}bs4/download/

MODULES =	lang/python

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m unittest discover -s bs4

.include <bsd.port.mk>
