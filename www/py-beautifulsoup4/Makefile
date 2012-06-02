# $OpenBSD: Makefile,v 1.1.1.1 2012/06/02 21:15:12 fgsch Exp $

COMMENT =	HTML/XML parser that supports invalid markup

MODPY_EGG_VERSION =	4.1.0
DISTNAME =	beautifulsoup4-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =   	www

HOMEPAGE =	http://www.crummy.com/software/BeautifulSoup/

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${HOMEPAGE}bs4/download/4.0/

MODULES =	lang/python

PKG_ARCH =	*

WRKSRC =	${WRKDIR}/${DISTNAME}

do-regress:
	@cd ${WRKSRC} && ${MODPY_BIN} -m unittest discover -s bs4

.include <bsd.port.mk>
