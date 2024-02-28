ONLY_FOR_ARCHS=	amd64 aarch64

COMMENT=	virtual lighttable and darkroom for photographers

V=		4.6.1
DISTNAME=	darktable-$V
PORTROACH=	limitw:1,even skipv:release-$V
EXTRACT_SUFX=	.tar.xz

CATEGORIES=	graphics x11

HOMEPAGE=	https://www.darktable.org/

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB =  ${COMPILER_LIBCXX} ${MODLUA_WANTLIB} GraphicsMagick ICE
WANTLIB += Iex-3_2 IlmThread-3_2 Imath-3_1 OpenEXR-3_2 SDL2 SM X11 Xext
WANTLIB += Xrandr atk-1.0 avif c cairo cairo-gobject cups curl exiv2
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gphoto2 gphoto2_port gthread-2.0 gtk-3 harfbuzz
WANTLIB += heif icudata icui18n icuuc intl jpeg json-glib-1.0 jxl
WANTLIB += jxl_threads lcms2 lensfun m openjp2 pango-1.0 pangocairo-1.0
WANTLIB += png portmidi pugixml raw rsvg-2 secret-1 sqlite3 tiff webp
WANTLIB += webpmux xml2 z OpenEXRCore-3_2


SITES=	https://github.com/darktable-org/darktable/releases/download/release-$V/

MODULES=	devel/cmake \
		lang/lua \
		textproc/intltool

MODLUA_VERSION=	5.4

# TLS, modern C++
COMPILER =	base-clang

BUILD_DEPENDS=	graphics/p5-Image-ExifTool \
		shells/bash \
		sysutils/coreutils \
		textproc/libxslt

# used if present at configure time.
# python.port.mk is not included, so hardcoded ,python3 not MODPY_FLAVOR
BUILD_DEPENDS+=	devel/py-jsonschema,python3

RUN_DEPENDS=	devel/desktop-file-utils \
		graphics/p5-Image-ExifTool \
		x11/gtk+4,-guic

LIB_DEPENDS=	audio/portmidi \
		devel/gettext,-runtime \
		devel/json-glib \
		devel/sdl2 \
		graphics/exiv2>=0.22 \
		graphics/GraphicsMagick \
		graphics/lcms2 \
		graphics/lensfun \
		graphics/libavif \
		graphics/libgphoto2>=2.5.0 \
		graphics/libraw \
		graphics/openexr \
		graphics/openjp2 \
		net/curl \
		print/cups,-libs \
		textproc/pugixml \
		x11/gnome/librsvg \
		x11/gnome/libsecret \
		x11/gtk+3

SEPARATE_BUILD=	Yes

CONFIGURE_ARGS=	-DBINARY_PACKAGE_BUILD=1 \
		-DCUSTOM_CFLAGS=1 \
		-DUSE_OPENMP=OFF \
		-DUSE_GMIC=OFF \
		-DUSE_COLORD=OFF \
		-DTESTBUILD_OPENCL_PROGRAMS=OFF \
		-DDONT_USE_INTERNAL_LIBRAW=ON

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
