# $OpenBSD: Makefile,v 1.7 2002/04/04 04:06:37 pvalchev Exp $

COMMENT=		"C library to produce PDF files"

DISTNAME=		pdflib-4.0.1
CATEGORIES=     	print
NEED_VERSION=		1.454

HOMEPAGE=		http://www.pdflib.com/pdflib/

MAINTAINER=		Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.pdflib.com/pdflib/download/

LIB_DEPENDS=		jpeg.62::graphics/jpeg \
			png.2::graphics/png \
			tiff.35::graphics/tiff

CONFIGURE_STYLE=	gnu dest
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/config
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--with-tifflib \
			--with-pnglib \
			--with-zlib \
			--without-perl \
			--without-java \
			--without-py \
			--without-tcl

CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			LIBS="-lm"
MAKE_ENV=		${CONFIGURE_ENV}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pdflib
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/pdflib

.include <bsd.port.mk>
