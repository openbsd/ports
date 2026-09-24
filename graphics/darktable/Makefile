ONLY_FOR_ARCHS=	amd64 aarch64 riscv64

COMMENT=	virtual lighttable and darkroom for photographers

V=		5.6.1
DISTNAME=	darktable-$V
PORTROACH=	limitw:1,even skipv:release-$V
EXTRACT_SUFX=	.tar.xz

CATEGORIES=	graphics x11

HOMEPAGE=	https://www.darktable.org/

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODLUA_WANTLIB} GraphicsMagick
WANTLIB += ICE Iex-3_5 IlmThread-3_5 Imath-3_2 OpenEXR-3_5 OpenEXRCore-3_5
WANTLIB += SDL2 SM X11 Xext Xrandr atk-1.0 avif c cairo cairo-gobject
WANTLIB += cups curl exiv2 gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gphoto2 gphoto2_port gthread-2.0
WANTLIB += gtk-3 harfbuzz heif icudata icui18n icuuc intl jpeg
WANTLIB += json-glib-1.0 jxl jxl_threads lcms2 lensfun m openjp2
WANTLIB += pango-1.0 pangocairo-1.0 png portmidi potrace pugixml
WANTLIB += raw rsvg-2 secret-1 sqlite3 tiff webp webpmux xml2
WANTLIB += z

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
BUILD_DEPENDS+=	devel/py-jsonschema

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
		graphics/potrace \
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

.if ${MACHINE_ARCH} == amd64
# there's a hard requirement of SSE3
CFLAGS+=	-msse3
CXXFLAGS=	${CFLAGS}
.endif

# Fix build with OpenEXR>=3 (Imath split)
CXXFLAGS +=	-I${LOCALBASE}/include/Imath

DEBUG_PACKAGES = ${BUILD_PACKAGES}

post-install:
	cd ${PREFIX}/lib && ln -s darktable/libdarktable.so

.include <bsd.port.mk>
