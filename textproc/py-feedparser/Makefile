# $OpenBSD: Makefile,v 1.1.1.1 2004/10/28 09:53:49 xsa Exp $

COMMENT=	"RSS and Atom feeds parser written in Python"

DISTNAME=	feedparser-3.3
PKGNAME=	py-${DISTNAME}
CATEGORIES=	textproc

HOMEPAGE=	http://www.feedparser.org/

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

# PSF license <http://www.python.org/2.1/license.html>
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=feedparser/}
EXTRACT_SUFX=	.zip

MODULES=	lang/python

NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/feedparser

# GNU Free Documentation License
DOCSDIR=	${PREFIX}/share/doc/py-feedparser

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/*.{css,html} ${DOCSDIR}
	${INSTALL_DATA_DIR} ${DOCSDIR}/images
	${INSTALL_DATA} ${WRKSRC}/docs/images/*.{gif,png} ${DOCSDIR}/images

.include <bsd.port.mk>
