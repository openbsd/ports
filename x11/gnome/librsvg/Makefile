# $OpenBSD: Makefile,v 1.165 2020/03/07 13:30:35 ajacoutot Exp $

COMMENT=		SAX-based render library for SVG files

GNOME_PROJECT=		librsvg
STABLE_VERSION=		2.48.0
OLD_VERSION=		2.40.21
DISTFILES=		librsvg-${STABLE_VERSION}${EXTRACT_SUFX}:0 \
			librsvg-${OLD_VERSION}${EXTRACT_SUFX}:1

MASTER_SITES0=		${MASTER_SITE_GNOME:=sources/${GNOME_PROJECT}/${STABLE_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}/}
MASTER_SITES1=		${MASTER_SITE_GNOME:=sources/${GNOME_PROJECT}/${OLD_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}/}

.include <bsd.port.arch.mk>

### stable
.if ${PROPERTIES:Mrust}
SHARED_LIBS +=  rsvg-2               39.2     # 49.0
GNOME_VERSION=		${STABLE_VERSION}
BUILD_DEPENDS=		lang/rust
PKG_ARGS=		-Dold=0 -Dstable=1
MAKE_ENV+=		CARGO_BUILD_JOBS=${MAKE_JOBS} \
			CARGO_HOME=${WRKBUILD}/cargo-home
COMPILER=		base-clang ports-gcc
WANTLIB += cairo-gobject
.else
### old
SHARED_LIBS +=  rsvg-2               38.2     # 42.20
GNOME_VERSION=		${OLD_VERSION}
PATCH_LIST=		old-patch-*
PKG_ARGS=		-Dold=1 -Dstable=0
WANTLIB += croco-0.6 ffi gmodule-2.0 pcre
LIB_DEPENDS +=		www/libcroco
.endif

CATEGORIES=		devel graphics

# GPLv2/LGPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += X11 Xext Xrender c cairo expat ffi fontconfig
WANTLIB += freetype fribidi gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 harfbuzz iconv
WANTLIB += intl lzma m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread xcb xcb-render xcb-shm xml2 z

MODULES=		x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

LIB_DEPENDS +=		devel/pango \
			graphics/gdk-pixbuf2 \
			textproc/libxml

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-tools

# error: -Bsymbolic-functions requested but not supported by ld
CONFIGURE_ARGS +=	--disable-Bsymbolic

DEBUG_PACKAGES=		${BUILD_PACKAGES}

post-install:
	rm ${PREFIX}/lib/gdk-pixbuf-2.0/2.10.0/loaders/*.{a,la}

.include <bsd.port.mk>
