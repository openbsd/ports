# $OpenBSD: Makefile,v 1.2 2013/03/11 11:44:48 espie Exp $

COMMENT =	HTML/XML parser that supports invalid markup

MODPY_EGG_VERSION =	4.1.0
DISTNAME =	beautifulsoup4-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =   	www

HOMEPAGE =	http://www.crummy.com/software/BeautifulSoup/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${HOMEPAGE}bs4/download/4.0/

MODULES =	lang/python

PKG_ARCH =	*

WRKSRC =	${WRKDIR}/${DISTNAME}

do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} -m unittest discover -s bs4

.include <bsd.port.mk>
