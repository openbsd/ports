# $OpenBSD: Makefile,v 1.3 2006/06/03 09:48:04 alek Exp $

COMMENT=	"Python clone of WikiWiki"

DISTNAME=	moin-1.3.5
PKGNAME=	moin${DISTNAME}p0
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
	cd ${WRKSRC}/docs && ${INSTALL_DATA} INSTALL.html \
	  README.migration UPDATE.html ${PREFIX}/share/doc/moinmoin

.include <bsd.port.mk>
