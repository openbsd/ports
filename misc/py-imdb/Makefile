# $OpenBSD: Makefile,v 1.1.1.1 2004/05/07 14:14:06 xsa Exp $

COMMENT=	"Python package to retrieve data of the IMDb movie database"

V=		1.2
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

MODULES=	python

WRKDIST=	${WRKDIR}/IMDbPY-${V}

DOCDIR=		${PREFIX}/share/doc/py-imdb
EXAMPLESDIR=	${PREFIX}/share/examples/py-imdb

TESTS=	test_imdb.py test_movie.py test_person.py test_utils.py

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/README* ${DOCDIR}
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/bin/* ${EXAMPLESDIR}

do-regress: fake
.for t in ${TESTS}
	@cd ${WRKSRC}/test && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} ./${t}
.endfor

.include <bsd.port.mk>
