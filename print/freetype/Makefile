# $OpenBSD: Makefile,v 1.28 2003/04/19 13:30:47 espie Exp $
# $FreeBSD: Makefile,v 1.6 1998/06/21 02:42:33 jseger Exp $

COMMENT=	"free and portable TrueType font rendering engine"
COMMENT-doc=	"documentation for FreeType"

VERSION=	1.3.1
DISTNAME=	freetype-${VERSION}
PKGNAME-doc=	freetype-doc-${VERSION}

CATEGORIES=	print
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=freetype/}

HOMEPAGE=	http://www.freetype.org/

MAINTAINER=	Shell Hung <shell@openbsd.org>

# See http://www.freetype.org/patents.html
PERMIT_PACKAGE_CDROM=	"patents"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"patents"
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --disable-nls

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.3-ltconfig \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.3-ltmain_sh \
		patch-*

MULTI_PACKAGES= -doc
SUBPACKAGE?=

FT_DOC=		${PREFIX}/share/doc/freetype
SFT_DOC=	${WRKSRC}/docs
SRCTYPE=	*.txt *.htm *.lsm credits FAQ TODO

post-install:
	${INSTALL_DATA_DIR} ${FT_DOC}/image
	${INSTALL_DATA} ${SFT_DOC}/image/* ${FT_DOC}/image
	cd ${SFT_DOC}; ${INSTALL_DATA} ${SRCTYPE} ${FT_DOC}
	${INSTALL_DATA_DIR} ${PREFIX}/include/freetype1
	mv ${PREFIX}/include/freetype ${PREFIX}/include/freetype1

.include <bsd.port.mk>
