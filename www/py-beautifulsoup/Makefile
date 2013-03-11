# $OpenBSD: Makefile,v 1.13 2013/03/11 11:44:48 espie Exp $

COMMENT =	HTML/XML parser that supports invalid markup

MODPY_EGG_VERSION =	3.2.0
REVISION =	1
DISTNAME =	BeautifulSoup-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}

CATEGORIES =   	www

HOMEPAGE =	http://www.crummy.com/software/BeautifulSoup/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${HOMEPAGE}download/3.x/

MODULES =	lang/python

PKG_ARCH =	*

WRKSRC =	${WRKDIR}/${DISTNAME}

do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} BeautifulSoupTests.py

.include <bsd.port.mk>
