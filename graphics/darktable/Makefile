# $OpenBSD: Makefile,v 1.112 2021/10/09 22:05:09 jca Exp $

ONLY_FOR_ARCHS=	amd64 aarch64

COMMENT=	virtual lighttable and darkroom for photographers

V=		3.6.0
DISTNAME=	darktable-$V
PORTROACH=	limitw:1,even skipv:release-$V
EXTRACT_SUFX=	.tar.xz
REVISION=	1

CATEGORIES=	graphics x11

HOMEPAGE=	https://www.darktable.org/

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODLUA_WANTLIB}
WANTLIB += GraphicsMagick ICE Iex-3_1 IlmThread-3_1
WANTLIB += Imath-3_1 SM X11 Xext Xrandr atk-1.0 avif c cairo cairo-gobject
WANTLIB += cups curl exiv2 gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gphoto2 gphoto2_port gthread-2.0
WANTLIB += gtk-3 harfbuzz intl jpeg json-glib-1.0 lcms2 lensfun
WANTLIB += m openjp2 osmgpsmap-1.0 pango-1.0 pangocairo-1.0 png
WANTLIB += pugixml rsvg-2 secret-1 soup-2.4 sqlite3 tiff webp
WANTLIB += xml2 z OpenEXR-3_1 icudata icui18n icuuc

MASTER_SITES=	https://github.com/darktable-org/darktable/releases/download/release-$V/

MODULES=	devel/cmake \
		lang/lua \
		textproc/intltool
MODLUA_VERSION=	5.3

# TLS, modern C++
COMPILER =	base-clang

BUILD_DEPENDS=	sysutils/coreutils \
		graphics/p5-Image-ExifTool \
		shells/bash \
		textproc/libxslt
RUN_DEPENDS=	devel/desktop-file-utils \
		graphics/p5-Image-ExifTool \
		x11/gtk+3,-guic
LIB_DEPENDS=	devel/gettext,-runtime \
		devel/json-glib \
		devel/libsoup \
		geo/osm-gps-map \
		graphics/GraphicsMagick \
		graphics/exiv2>=0.22 \
		graphics/lcms2 \
		graphics/libavif \
		graphics/libgphoto2>=2.5.0 \
		graphics/lensfun \
		graphics/openexr \
		graphics/openjp2 \
		net/curl \
		textproc/pugixml \
		x11/gnome/librsvg \
		x11/gnome/libsecret \
		x11/gtk+3

SEPARATE_BUILD=	Yes

CONFIGURE_ARGS=	-DBINARY_PACKAGE_BUILD=1 \
		-DCUSTOM_CFLAGS=1 \
		-DUSE_OPENMP=OFF \
		-DUSE_GMIC=OFF \
		-DTESTBUILD_OPENCL_PROGRAMS=OFF

# picks up LLVM at build time
CONFIGURE_ARGS+= -DUSE_OPENCL=OFF

CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
NO_TEST=	Yes

.include <bsd.port.arch.mk>
.if ${ARCH:Mamd64}
# there's a hard requirement of SSE3
CFLAGS+=	-msse3
CXXFLAGS=	${CFLAGS}
.endif

# Fix build with OpenEXR>=3 (Imath split)
CXXFLAGS +=	-I${LOCALBASE}/include/Imath

post-install:
	cd ${PREFIX}/lib && ln -s darktable/libdarktable.so

.include <bsd.port.mk>
