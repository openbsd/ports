# $OpenBSD: Makefile,v 1.17 2006/08/03 23:28:11 espie Exp $

COMMENT=		"C library to produce PDF files"

DISTNAME=		pdflib-4.0.3
PKGNAME=		${DISTNAME}p2
CATEGORIES=     	print
SHARED_LIBS=		pdf	2.3

HOMEPAGE=		http://www.pdflib.com/pdflib/

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.pdflib.com/pdflib/download/

WANTLIB=		m z jpeg

LIB_DEPENDS=		png.>=2::graphics/png \
			tiff.>=35::graphics/tiff

USE_LIBTOOL=		Yes

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

CONFIGURE_ENV=		LDFLAGS="-L${DEPBASE}/lib" \
			CPPFLAGS="-I${DEPBASE}/include/libpng -I${DEPBASE}/include" \
			LIBS="-lm"
MAKE_ENV=		${CONFIGURE_ENV}

REGRESS_TARGET=		test

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pdflib
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/pdflib

.include <bsd.port.mk>
