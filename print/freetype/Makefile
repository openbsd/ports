# $OpenBSD: Makefile,v 1.50 2019/07/12 20:48:55 sthen Exp $

# this is freetype1; freetype2 is in xenocara.
PORTROACH=	limit:^1\.

COMMENT-main=	free and portable TrueType font rendering engine
COMMENT-doc=	documentation for FreeType

VERSION=	1.3.1
DISTNAME=	freetype-${VERSION}
PKGNAME-main=	${DISTNAME}
PKGNAME-doc=	freetype-doc-${VERSION}
REVISION-main=	4

CATEGORIES=	print
SHARED_LIBS=	ttf	1.3

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=freetype/}

HOMEPAGE=	http://www.freetype.org/

# See http://www.freetype.org/patents.html
# bytecode interpreter disabled
PERMIT_PACKAGE=	Yes
WANTLIB=		m

USE_GMAKE=	Yes
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu dest
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
