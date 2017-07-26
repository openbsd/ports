# $OpenBSD: Makefile,v 1.77 2017/07/26 22:45:23 sthen Exp $

ONLY_FOR_ARCHS=	i386 amd64

COMMENT=	virtual lighttable and darkroom for photographers

V=		2.2.5
DISTNAME=	darktable-$V
PORTROACH=	limitw:1,even
EXTRACT_SUFX=	.tar.xz
REVISION=	0

CATEGORIES=	graphics x11

HOMEPAGE=	http://www.darktable.org/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GraphicsMagick ICE Iex IlmImf IlmThread Imath SM X11
WANTLIB += Xext Xrandr atk-1.0 c cairo cairo-gobject colord colord-gtk
WANTLIB += colordprivate cups curl exiv2 flickcurl gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gphoto2 gphoto2_port
WANTLIB += gthread-2.0 gtk-3 intl jpeg json-glib-1.0 lcms2 lensfun
WANTLIB += lua5.2 m openjp2 osmgpsmap-1.0 pango-1.0 pangocairo-1.0
WANTLIB += png pthread pugixml rsvg-2 secret-1 soup-2.4 sqlite3
WANTLIB += tiff webp xml2 z ${COMPILER_LIBCXX}

MASTER_SITES=	https://github.com/darktable-org/darktable/releases/download/release-$V/

MODULES=	devel/cmake \
		lang/lua \
		textproc/intltool
MODLUA_VERSION=	5.2
# TLS emulation
COMPILER =	gcc

BUILD_DEPENDS=	sysutils/coreutils
RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic
LIB_DEPENDS=	devel/gettext \
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
		-DTESTBUILD_OPENCL_PROGRAMS=OFF
# OpenCL picks up LLVM at build time.

CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
NO_TEST=	Yes

.include <bsd.port.arch.mk>
.if ${ARCH:Mi386}
# needs 64-bit atomic ops, and all the registers it can get.
CFLAGS += -march=i686 -fomit-frame-pointer
.endif
# ...and there's a hard requirement of SSE3
CFLAGS+=	-msse3
CXXFLAGS=	${CFLAGS}

post-install:
	cd ${PREFIX}/lib && ln -s darktable/libdarktable.so

.include <bsd.port.mk>
