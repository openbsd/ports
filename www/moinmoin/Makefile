# $OpenBSD: Makefile,v 1.4 2006/08/04 10:20:29 djm Exp $

COMMENT=	"Python clone of WikiWiki"

DISTNAME=	moin-1.5.4
PKGNAME=	moin${DISTNAME}
CATEGORIES=	www
PKG_ARCH=	*

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
	  README.migration ${PREFIX}/share/doc/moinmoin

.include <bsd.port.mk>
