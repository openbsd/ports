# $OpenBSD: Makefile,v 1.7 2005/02/04 17:24:39 xsa Exp $

COMMENT=	"Python package to retrieve data of the IMDb movie database"

V=		1.7
DISTNAME=	imdbpy-${V}
PKGNAME=	py-imdb-${V}
CATEGORIES=	misc

HOMEPAGE=	http://imdbpy.sourceforge.net/

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

# GPL 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=imdbpy/}

MODULES=	lang/python

WRKDIST=	${WRKDIR}/IMDbPY-${V}

NO_REGRESS=	Yes

DOCSDIR=	${PREFIX}/share/doc/py-imdb
EXAMPLESDIR=	${PREFIX}/share/examples/py-imdb

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/README* ${DOCSDIR}
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/bin/* ${EXAMPLESDIR}

.include <bsd.port.mk>
