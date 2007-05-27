# $OpenBSD: Makefile,v 1.4 2007/05/27 14:06:06 martynas Exp $

COMMENT=	"RSS and Atom feeds parser written in Python"

V=		4.1
DISTNAME=	feedparser-${V}
PKGNAME=	py-${DISTNAME}p0
CATEGORIES=	textproc lang/python

HOMEPAGE=	http://www.feedparser.org/

MAINTAINER=	Romain Gaillegue <romain@biscotte.net>

# PSF license <http://www.python.org/2.1/license.html>
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=feedparser/}
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		feedparser-tests-${V}${EXTRACT_SUFX}
EXTRACT_SUFX=	.zip

MODULES=	lang/python

WRKDIST=	${WRKDIR}

EXAMPLESDIR=	${PREFIX}/share/examples/py-feedparser
# GNU Free Documentation License
DOCSDIR=	${PREFIX}/share/doc/py-feedparser

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/*.html ${DOCSDIR}
	${INSTALL_DATA_DIR} ${DOCSDIR}/css
	${INSTALL_DATA} ${WRKSRC}/docs/css/feedparser.css ${DOCSDIR}/css
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/examples/*.{rdf,xml} ${EXAMPLESDIR}
	${INSTALL_DATA_DIR} ${DOCSDIR}/images
	${INSTALL_DATA} ${WRKSRC}/docs/images/*.{gif,png} ${DOCSDIR}/images

do-regress:
	cd ${WRKSRC} && ${MODPY_BIN} feedparsertest.py

.include <bsd.port.mk>
