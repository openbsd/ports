# $OpenBSD: Makefile,v 1.18 2020/06/12 04:43:27 kn Exp $

COMMENT =	HTML/XML parser that supports invalid markup

MODPY_EGG_VERSION =	3.2.1
DISTNAME =	BeautifulSoup-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}
REVISION =	0

CATEGORIES =	www

HOMEPAGE =	http://www.crummy.com/software/BeautifulSoup/

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =	${HOMEPAGE}bs3/download/3.x/

MODULES =	lang/python

do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} BeautifulSoupTests.py

.include <bsd.port.mk>
