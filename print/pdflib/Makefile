# $OpenBSD: Makefile,v 1.23 2013/06/04 18:41:56 naddy Exp $

COMMENT=		C library to produce PDF files

DISTNAME=		pdflib-4.0.3
REVISION = 		2
CATEGORIES=     	print
SHARED_LIBS=		pdf	2.3

HOMEPAGE=		http://www.pdflib.com/pdflib/

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=		http://www.pdflib.com/pdflib/download/

WANTLIB=		m z jpeg png>=2 tiff>=35

LIB_DEPENDS=		graphics/png \
			graphics/tiff


FAKE=			lib
CONFIGURE_STYLE=	autoconf dest
AUTOCONF_VERSION=	2.13
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--with-tifflib \
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
