# $OpenBSD: Makefile,v 1.20 2020/06/13 14:31:13 sthen Exp $

COMMENT =	HTML/XML parser that supports invalid markup

MODPY_EGG_VERSION =	3.2.2
DISTNAME =	BeautifulSoup-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}

CATEGORIES =	www

HOMEPAGE =	http://www.crummy.com/software/BeautifulSoup/

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =	${HOMEPAGE}bs3/download/3.x/

MODULES =	lang/python
MODPY_PYTEST =	Yes
MODPY_SETUPTOOLS = Yes

do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} BeautifulSoupTests.py

.include <bsd.port.mk>
