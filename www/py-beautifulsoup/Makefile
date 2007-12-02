# $OpenBSD: Makefile,v 1.1.1.1 2007/12/02 21:45:08 fgsch Exp $

COMMENT=	HTML/XML parser that supports invalid markup

DISTNAME=	BeautifulSoup
PKGNAME=	py-beautifulsoup-3.0.4
CATEGORIES=    	www

HOMEPAGE=	http://www.crummy.com/software/BeautifulSoup/

# Python License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/download/

MODULES=	lang/python

WRKSRC=		${WRKDIR}/${DISTNAME}-3.0.4

do-regress:
	@cd ${WRKSRC} && ${MODPY_BIN} BeautifulSoupTests.py

.include <bsd.port.mk>
