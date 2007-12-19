# $OpenBSD: Makefile,v 1.3 2007/12/19 18:08:57 fgsch Exp $

COMMENT=	HTML/XML parser that supports invalid markup

DISTNAME=	BeautifulSoup-3.0.5
PKGNAME=	py-${DISTNAME}p0
CATEGORIES=    	www

HOMEPAGE=	http://www.crummy.com/software/BeautifulSoup/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/download/

MODULES=	lang/python

WRKSRC=		${WRKDIR}/${DISTNAME}

do-regress:
	@cd ${WRKSRC} && ${MODPY_BIN} BeautifulSoupTests.py

.include <bsd.port.mk>
