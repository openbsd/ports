# $OpenBSD: Makefile,v 1.39 2006/11/21 10:07:26 espie Exp $
# $FreeBSD: Makefile,v 1.6 1998/06/21 02:42:33 jseger Exp $

COMMENT-main=	"free and portable TrueType font rendering engine"
COMMENT-doc=	"documentation for FreeType"

VERSION=	1.3.1
DISTNAME=	freetype-${VERSION}
PKGNAME-main=	${DISTNAME}p3
PKGNAME-doc=	freetype-doc-${VERSION}

CATEGORIES=	print
SHARED_LIBS=	ttf	1.3

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=freetype/}

HOMEPAGE=	http://www.freetype.org/

# See http://www.freetype.org/patents.html
# bytecode interpreter disabled
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		m

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --disable-nls

MULTI_PACKAGES= -main -doc

PKG_ARCH-doc=	*
WANTLIB-doc=

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
