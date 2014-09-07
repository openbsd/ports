# $OpenBSD: Makefile,v 1.16 2014/09/07 18:50:50 sthen Exp $

COMMENT =	HTML/XML parser that supports invalid markup

MODPY_EGG_VERSION =	3.2.1
DISTNAME =	BeautifulSoup-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}

CATEGORIES =	www

HOMEPAGE =	http://www.crummy.com/software/BeautifulSoup/
MAINTAINER =	frantisek holop <minusf@obiit.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${HOMEPAGE}bs3/download/3.x/

MODULES =	lang/python

do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} BeautifulSoupTests.py

.include <bsd.port.mk>
