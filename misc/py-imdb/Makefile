# $OpenBSD: Makefile,v 1.16 2009/08/10 13:57:40 sthen Exp $

COMMENT=	Python package to retrieve data of the IMDb movie database

MODPY_EGG_VERSION=3.6
DISTNAME=	IMDbPY-${MODPY_EGG_VERSION}
PKGNAME=	py-imdb-${MODPY_EGG_VERSION}p1
CATEGORIES=	misc

HOMEPAGE=	http://imdbpy.sourceforge.net/

MAINTAINER=	Todd C. Miller <millert@openbsd.org>

# GPL 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=imdbpy/}

MODULES=	lang/python

NO_REGRESS=	Yes

DOCSDIR=	${PREFIX}/share/doc/py-imdb
EXAMPLESDIR=	${PREFIX}/share/examples/py-imdb

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/README* ${DOCSDIR}
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/bin/* ${EXAMPLESDIR}

.include <bsd.port.mk>
