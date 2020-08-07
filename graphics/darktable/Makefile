# $OpenBSD: Makefile,v 1.98 2020/08/07 14:30:10 jsg Exp $

ONLY_FOR_ARCHS= i386 amd64 aarch64

COMMENT=	virtual lighttable and darkroom for photographers

V=		2.6.3
DISTNAME=	darktable-$V
PORTROACH=	limitw:1,even skipv:release-$V
EXTRACT_SUFX=	.tar.xz
REVISION=	3

CATEGORIES=	graphics x11

HOMEPAGE=	http://www.darktable.org/

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODLUA_WANTLIB}
WANTLIB += GraphicsMagick Iex-2_5 IlmImf-2_5 X11 Xrandr c cairo
WANTLIB += colord colord-gtk colordprivate cups curl exiv2 flickcurl
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gphoto2 gphoto2_port gtk-3 intl jpeg json-glib-1.0
WANTLIB += lcms2 lensfun m openjp2 osmgpsmap-1.0 pango-1.0 pangocairo-1.0
WANTLIB += png pugixml rsvg-2 secret-1 soup-2.4 sqlite3 tiff webp
WANTLIB += xml2 z

MASTER_SITES=	https://github.com/darktable-org/darktable/releases/download/release-$V/

MODULES=	devel/cmake \
		lang/lua \
		textproc/intltool
MODLUA_VERSION=	5.3

# TLS, modern C++, upstream requires gcc-5.0+/clang-3.9+ so no ports-gcc
COMPILER =	base-clang

BUILD_DEPENDS=	sysutils/coreutils
RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic
LIB_DEPENDS=	devel/gettext,-runtime \
		devel/json-glib \
		devel/libsoup \
		geo/osm-gps-map \
		graphics/GraphicsMagick \
		graphics/colord-gtk \
		graphics/exiv2>=0.22 \
		graphics/lcms2 \
		graphics/libgphoto2>=2.5.0 \
		graphics/lensfun \
		graphics/openexr \
		graphics/openjp2 \
		net/curl \
		net/flickcurl \
		textproc/pugixml \
		x11/gnome/librsvg \
		x11/gnome/libsecret \
		x11/gtk+3

SEPARATE_BUILD=	Yes

CONFIGURE_ARGS=	-DBINARY_PACKAGE_BUILD=1 \
		-DCUSTOM_CFLAGS=1 \
		-DUSE_OPENMP=OFF \
		-DTESTBUILD_OPENCL_PROGRAMS=OFF
# OpenCL picks up LLVM at build time.

CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
NO_TEST=	Yes

.include <bsd.port.arch.mk>
.if ${ARCH:Mi386}
# needs all the registers it can get.
CFLAGS+=	-fomit-frame-pointer
.endif
# ...and there's a hard requirement of SSE3
CFLAGS+=	-msse3
CXXFLAGS=	${CFLAGS}

post-install:
	cd ${PREFIX}/lib && ln -s darktable/libdarktable.so

.include <bsd.port.mk>
