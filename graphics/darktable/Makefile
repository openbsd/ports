# $OpenBSD: Makefile,v 1.48 2015/05/18 10:44:57 sthen Exp $

# requires SSE
ONLY_FOR_ARCHS=	i386 amd64

.include <bsd.port.arch.mk>
.if ${ARCH:Mi386}
# needs 64-bit atomic ops, and all the registers it can get.
CFLAGS += -march=i586 -fomit-frame-pointer
CXXFLAGS += -march=i586 -fomit-frame-pointer
.endif

COMMENT=	virtual lighttable and darkroom for photographers

PORTROACH_COMMENT= newer versions require TLS
DISTNAME=	darktable-1.2.3
PORTROACH=	limitw:1,even
EXTRACT_SUFX=	.tar.xz
REVISION=	5

SHARED_ONLY=	Yes

CATEGORIES=	graphics x11

HOMEPAGE=	http://darktable.sourceforge.net/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GraphicsMagick
WANTLIB += GL GLU ICE Iex IlmImf IlmThread Imath SDL SM X11 Xext
WANTLIB += atk-1.0 c cairo curl exiv2 flickcurl freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gnome-keyring
WANTLIB += gobject-2.0 gphoto2 gthread-2.0 gtk-x11-2.0 jpeg lcms2
WANTLIB += m openjpeg pango-1.0 pangocairo-1.0 png pthread rsvg-2
WANTLIB += sqlite3 stdc++ tiff xml2 z gphoto2_port soup-2.4 json-glib-1.0

WANTLIB += lensfun # dlopen'd. this is "Extra" in check-lib-depends; that's ok,

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=darktable/}

MODULES=	devel/cmake \
		devel/gettext \
		textproc/intltool

BUILD_DEPENDS=	sysutils/coreutils
RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk-engines2 \
		x11/gtk+3,-guic
LIB_DEPENDS=	devel/json-glib \
		devel/libsoup \
		devel/sdl \
		graphics/GraphicsMagick \
		graphics/exiv2>=0.22 \
		graphics/lcms2 \
		graphics/libgphoto2>=2.5.0 \
		graphics/lensfun \
		graphics/openexr \
		graphics/openjpeg \
		net/curl \
		net/flickcurl \
		x11/gnome/libgnome-keyring \
		x11/gnome/librsvg \
		x11/gtk+2

SEPARATE_BUILD=	Yes

CONFIGURE_ARGS=	-DOPENJPEG_INCLUDE_DIR=${PREFIX}/include/openjpeg-1.5 \
		-DBINARY_PACKAGE_BUILD=1 \
		-DCUSTOM_CFLAGS=1

# enable workaround for mutex problems
CFLAGS+=	-D_DEBUG

# error: #error "SSE instruction set not enabled"
CFLAGS+=	-msse2

CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

post-install:
	cd ${PREFIX}/lib && ln -s darktable/libdarktable.so

.include <bsd.port.mk>
