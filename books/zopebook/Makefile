# $OpenBSD: Makefile,v 1.1.1.1 2003/06/02 23:32:31 naddy Exp $

COMMENT=        "Zope documentation"

# unversioned, so set to the version of Zope that it covers
VERSION=	2.5
DISTNAME=	ZopeBook
PKGNAME=	zopebook-${VERSION}
CATEGORIES=	books

HOMEPAGE=	http://www.zope.org/Documentation/Books/ZopeBook/current/
MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tgz
DIST_SUBDIR=	zopebook-${VERSION}

MAINTAINER=	Xavier Santolaria <xavier@santolaria.net>

# Open Publication License 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	Yes
NO_REGRESS=	Yes

INSTALL_LOC=	${PREFIX}/share/doc/zopebook
DOC_SUBDIRS=	Figures

do-install:
	${INSTALL_DATA_DIR} ${INSTALL_LOC}
	${INSTALL_DATA} ${WRKSRC}/*.html ${INSTALL_LOC}
.for i in ${DOC_SUBDIRS}
	${INSTALL_DATA_DIR} ${INSTALL_LOC}/$i
	${INSTALL_DATA} `find ${WRKSRC}/$i -maxdepth 1 -type f` \
		${INSTALL_LOC}/$i
.endfor

.include <bsd.port.mk>
