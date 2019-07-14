# $OpenBSD: Makefile,v 1.29 2019/07/14 00:39:39 naddy Exp $

COMMENT=		C library to produce PDF files

DISTNAME=		pdflib-4.0.3
REVISION = 		5
CATEGORIES=     	print
SHARED_LIBS=		pdf	2.3

HOMEPAGE=		http://www.pdflib.com/pdflib/

PERMIT_PACKAGE=	Yes

MASTER_SITES=		http://www.pdflib.com/pdflib/download/

WANTLIB=		m z jpeg png>=2 tiff>=35

LIB_DEPENDS=		graphics/png \
			graphics/tiff

# XXX !shared archs don't inherit libraries
LIB_DEPENDS +=		graphics/jpeg

CONFIGURE_STYLE=	autoconf dest
AUTOCONF_VERSION=	2.13
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config
CONFIGURE_ARGS=		--with-tifflib \
			--with-pnglib \
			--with-zlib \
			--without-perl \
			--without-java \
			--without-py \
			--without-tcl

CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include" \
			LIBS="-lm"
MAKE_ENV=		${CONFIGURE_ENV}

TEST_TARGET=		test

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pdflib
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/pdflib

.include <bsd.port.mk>
