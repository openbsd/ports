# $OpenBSD: Makefile,v 1.8 2007/10/08 08:22:43 steven Exp $

COMMENT=	Python clone of WikiWiki

DISTNAME=	moin-1.5.8
PKGNAME=	moin${DISTNAME}p0
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

RUN_DEPENDS=	${MODPY_EXPAT_DEPENDS}

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/moinmoin
	cd ${WRKSRC}/docs && ${INSTALL_DATA} INSTALL.html \
	  README.migration ${PREFIX}/share/doc/moinmoin

.include <bsd.port.mk>
