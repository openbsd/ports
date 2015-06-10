# $OpenBSD: Makefile,v 1.52 2015/06/10 22:27:28 sthen Exp $

ONLY_FOR_ARCHS=	i386 amd64

COMMENT=	virtual lighttable and darkroom for photographers

V=		1.6.7
REVISION=	0
DISTNAME=	darktable-$V
PORTROACH=	limitw:1,even
EXTRACT_SUFX=	.tar.xz

SHARED_ONLY=	Yes

CATEGORIES=	graphics x11

HOMEPAGE=	http://www.darktable.org/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL GLU GraphicsMagick ICE Iex IlmImf IlmThread Imath
WANTLIB += SDL SM X11 Xext Xrandr atk-1.0 c cairo colord colordprivate
WANTLIB += curl exiv2 flickcurl gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gphoto2 gphoto2_port
WANTLIB += gthread-2.0 gtk-x11-2.0 jpeg json-glib-1.0 lcms2 lua5.2
WANTLIB += m openjpeg pango-1.0 pangocairo-1.0 png pthread rsvg-2
WANTLIB += secret-1 soup-2.4 sqlite3 tiff webp xml2 z

WANTLIB += lensfun # dlopen'd. this is "Extra" in check-lib-depends; that's ok,

MASTER_SITES=	https://github.com/darktable-org/darktable/releases/download/release-$V/

MODULES=	devel/cmake \
		devel/gettext \
		gcc4 \
		lang/lua \
		textproc/intltool
MODLUA_VERSION=	5.2
MODGCC4_ARCHS=	*
MODGCC4_LANGS=	c c++

BUILD_DEPENDS=	sysutils/coreutils
RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk-engines2 \
		x11/gtk+3,-guic
LIB_DEPENDS=	devel/json-glib \
		devel/libsoup \
		devel/sdl \
		graphics/GraphicsMagick \
		graphics/colord \
		graphics/exiv2>=0.22 \
		graphics/lcms2 \
		graphics/libgphoto2>=2.5.0 \
		graphics/lensfun \
		graphics/openexr \
		graphics/openjpeg \
		net/curl \
		net/flickcurl \
		x11/gnome/librsvg \
		x11/gnome/libsecret \
		x11/gtk+2

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

post-patch:
	perl -pi -e 's,/usr/X11R6,${X11BASE},' \
	    ${WRKSRC}/src/external/colord-gtk/CMakeLists.txt

post-install:
	cd ${PREFIX}/lib && ln -s darktable/libdarktable.so

.include <bsd.port.mk>
