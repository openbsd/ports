# $OpenBSD: Makefile,v 1.4 2008/04/22 12:16:30 fgsch Exp $

COMMENT=	HTML/XML parser that supports invalid markup

MODPY_EGG_VERSION=	3.0.5
DISTNAME=		BeautifulSoup-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}p1

CATEGORIES=    	www

HOMEPAGE=	http://www.crummy.com/software/BeautifulSoup/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/download/

MODULES=	lang/python

PKG_ARCH=	*

WRKSRC=		${WRKDIR}/${DISTNAME}

do-regress:
	@cd ${WRKSRC} && ${MODPY_BIN} BeautifulSoupTests.py

.include <bsd.port.mk>
