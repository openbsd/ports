# $OpenBSD: Makefile,v 1.1.1.1 2005/05/17 21:29:36 fgsch Exp $

COMMENT=	"Python clone of WikiWiki"

DISTNAME=	moin-1.3.4
PKGNAME=	moin${DISTNAME}
CATEGORIES=	www

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=moin/}

HOMEPAGE=	http://moinmoin.wikiwikiweb.de/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/python

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/moinmoin
	cd ${WRKSRC} && ${INSTALL_DATA} README INSTALL.html \
	  README.migration UPDATE.html ${PREFIX}/share/doc/moinmoin

.include <bsd.port.mk>
