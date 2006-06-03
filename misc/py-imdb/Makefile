# $OpenBSD: Makefile,v 1.11 2006/06/03 09:40:27 alek Exp $

COMMENT=	"Python package to retrieve data of the IMDb movie database"

V=		2.0
DISTNAME=	IMDbPY-${V}
PKGNAME=	py-imdb-${V}p0
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

NO_REGRESS=	Yes

DOCSDIR=	${PREFIX}/share/doc/py-imdb
EXAMPLESDIR=	${PREFIX}/share/examples/py-imdb

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/README* ${DOCSDIR}
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/bin/* ${EXAMPLESDIR}

.include <bsd.port.mk>
