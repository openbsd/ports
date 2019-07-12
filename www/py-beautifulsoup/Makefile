# $OpenBSD: Makefile,v 1.17 2019/07/12 20:51:00 sthen Exp $

COMMENT =	HTML/XML parser that supports invalid markup

MODPY_EGG_VERSION =	3.2.1
DISTNAME =	BeautifulSoup-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}

CATEGORIES =	www

HOMEPAGE =	http://www.crummy.com/software/BeautifulSoup/
MAINTAINER =	frantisek holop <minusf@obiit.org>

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =	${HOMEPAGE}bs3/download/3.x/

MODULES =	lang/python

do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} BeautifulSoupTests.py

.include <bsd.port.mk>
