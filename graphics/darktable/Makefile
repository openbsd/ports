# $OpenBSD: Makefile,v 1.61 2016/04/12 09:40:59 sthen Exp $

ONLY_FOR_ARCHS=	i386 amd64

COMMENT=	virtual lighttable and darkroom for photographers

V=		2.0.3
REVISION=	0
DISTNAME=	darktable-$V
PORTROACH=	limitw:1,even
EXTRACT_SUFX=	.tar.xz

CATEGORIES=	graphics x11

HOMEPAGE=	http://www.darktable.org/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL GLU GraphicsMagick ICE Iex IlmImf IlmThread Imath
WANTLIB += SDL SM X11 Xext Xrandr atk-1.0 c cairo cairo-gobject
WANTLIB += colord colord-gtk colordprivate cups curl exiv2 flickcurl
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gphoto2 gphoto2_port gthread-2.0 gtk-3 intl jpeg
WANTLIB += json-glib-1.0 lcms2 lensfun lua5.2 m openjpeg osmgpsmap-1.0
WANTLIB += pango-1.0 pangocairo-1.0 png pthread pugixml rsvg-2 secret-1
WANTLIB += soup-2.4 sqlite3 tiff webp xml2 z

MASTER_SITES=	https://github.com/darktable-org/darktable/releases/download/release-$V/

MODULES=	devel/cmake \
		gcc4 \
		lang/lua \
		textproc/intltool
MODLUA_VERSION=	5.2
MODGCC4_ARCHS=	*
MODGCC4_LANGS=	c c++

BUILD_DEPENDS=	sysutils/coreutils
RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic
LIB_DEPENDS=	devel/gettext \
		devel/json-glib \
		devel/libsoup \
		devel/sdl \
		geo/osm-gps-map \
		graphics/GraphicsMagick \
		graphics/colord-gtk \
		graphics/exiv2>=0.22 \
		graphics/lcms2 \
		graphics/libgphoto2>=2.5.0 \
		graphics/lensfun \
		graphics/openexr \
		graphics/openjpeg \
		net/curl \
		net/flickcurl \
		textproc/pugixml \
		x11/gnome/librsvg \
		x11/gnome/libsecret \
		x11/gtk+3

SEPARATE_BUILD=	Yes

CONFIGURE_ARGS=	-DOPENJPEG_INCLUDE_DIR=${PREFIX}/include/openjpeg-1.5 \
		-DBINARY_PACKAGE_BUILD=1 \
		-DCUSTOM_CFLAGS=1

CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

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
