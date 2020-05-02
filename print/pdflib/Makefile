# $OpenBSD: Makefile,v 1.30 2020/05/02 16:40:06 cwen Exp $

COMMENT=		C library to produce PDF files

DISTNAME=		pdflib-4.0.3
REVISION = 		6
CATEGORIES=     	print
SHARED_LIBS=		pdf	2.3

HOMEPAGE=		https://www.pdflib.com/pdflib/

# Aladdin Free Public License V8
PERMIT_PACKAGE=	Yes

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

# In various places in the code, it's assumed that the __POWERPC__ define
# is Mac OS 9 specific, but our clang defines it as well, breaking the build.
.if ${MACHINE_ARCH:Mpowerpc}
CFLAGS +=		-U__POWERPC__
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pdflib
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/pdflib

.include <bsd.port.mk>
