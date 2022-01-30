# $OpenBSD: Makefile,v 1.121 2022/01/30 15:08:08 ajacoutot Exp $

COMMENT =	PostScript and PDF interpreter

VERSION =	9.55.0
DISTNAME =	ghostscript-${VERSION}
CATEGORIES =	lang print
SHARED_LIBS =	gs 16.0
REVISION =	1

MASTER_SITES =	https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/download/gs${VERSION:S/.//g}/

PORTROACH =	site:https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/

HOMEPAGE =	https://ghostscript.com/

MAINTAINER =	Volker Schlecht <openbsd-ports@schlecht.dev>

FLAVORS =	a4 gtk no_x11
FLAVOR?=

FLAVOR_STRING =	${FLAVOR_EXT:S/-/,/g}

SUBST_VARS =	VERSION FLAVOR_STRING

# AGPLv3, except for the included CMap files from Adobe, which may
# only be redistributed without modifications.
PERMIT_PACKAGE=	Yes

WANTLIB = c m pthread z cups fontconfig freetype iconv idn ijs jpeg jbig2dec \
openjp2 paper png tiff

RUN_DEPENDS =	print/ghostscript/gnu-fonts>=8.11p3
LIB_DEPENDS +=	converters/libiconv
LIB_DEPENDS +=	devel/libidn
LIB_DEPENDS +=	graphics/jpeg
LIB_DEPENDS +=	graphics/jbig2dec
LIB_DEPENDS +=	graphics/openjp2
LIB_DEPENDS +=	graphics/png
LIB_DEPENDS +=	graphics/tiff
LIB_DEPENDS +=	print/cups,-libs
LIB_DEPENDS +=	print/ijs
LIB_DEPENDS +=	print/libpaper

MAKE_FLAGS =	LIB_VERSION_MAJOR=${LIBgs_VERSION:R} \
		LIB_VERSION_MINOR=${LIBgs_VERSION:E}

USE_GMAKE =	Yes

ALL_TARGET =		so all
INSTALL_TARGET =	soinstall install

COMPILER =		base-clang ports-gcc
CONFIGURE_STYLE =	simple

CONFIGURE_ARGS =	--prefix=${PREFIX}
CONFIGURE_ARGS +=	--with-gs=gs
CONFIGURE_ARGS +=	--enable-fontconfig
CONFIGURE_ARGS +=	--enable-openjpeg
CONFIGURE_ARGS +=	--without-tesseract
CONFIGURE_ARGS +=	--enable-freetype
CONFIGURE_ARGS +=	--with-system-libtiff
CONFIGURE_ARGS +=	--with-libpaper
CONFIGURE_ARGS +=	--with-libiconv=maybe
CONFIGURE_ARGS +=	--with-fontpath=${LOCALBASE}/share/fonts
CONFIGURE_ARGS +=	--with-drivers=FILES,PRINTERS,X11
CONFIGURE_ARGS +=	--mandir=${LOCALBASE}/man

.if ${FLAVOR:Mgtk} && ${FLAVOR:Mno_x11}
ERRORS +=	"Fatal: Conflicting flavors: ${FLAVOR}"
.elif ${FLAVOR:Mgtk}
LIB_DEPENDS +=	x11/gtk+3
WANTLIB +=	ICE SM X11 Xext Xt
WANTLIB +=	atk-1.0 cairo cairo-gobject gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB +=	glib-2.0 gobject-2.0 gtk-3 harfbuzz intl pango-1.0
WANTLIB +=	pangocairo-1.0
CONFIGURE_ARGS +=	--enable-gtk
.elif ${FLAVOR:Mno_x11}
CONFIGURE_ARGS +=	--disable-dbus
CONFIGURE_ARGS +=	--disable-gtk
CONFIGURE_ARGS +=	--without-x
.else
WANTLIB +=	ICE SM X11 Xext Xt
CONFIGURE_ARGS +=	--disable-gtk
CONFIGURE_ARGS +=	--disable-dbus
CONFIGURE_ARGS +=	--with-x
.endif
.if ${FLAVOR:Ma4}
CFLAGS +=	-DA4
.endif

# Needed to make the configure script detect libiconv
CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST =	Yes

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# Just delete all the bundled directories that are not needed
pre-configure:
	rm -rf ${WRKSRC}/freetype && \
	rm -rf ${WRKSRC}/ijs && \
	rm -rf ${WRKSRC}/jbig2dec && \
	rm -rf ${WRKSRC}/jpeg && \
	rm -rf ${WRKSRC}/libpng && \
	rm -rf ${WRKSRC}/openjpeg && \
	rm -rf ${WRKSRC}/tesseract && \
	rm -rf ${WRKSRC}/tiff && \
	rm -rf ${WRKSRC}/zlib

post-install:
	rm -f ${PREFIX}/lib/libgs.so{,.${LIBgs_VERSION:R}}
# rename the dynamic binary
	mv ${PREFIX}/bin/{gsc,gs}

.include <bsd.port.mk>
