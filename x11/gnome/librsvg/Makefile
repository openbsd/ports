PORTROACH=		skipv:2.56.90,2.56.92,2.56.93,2.58.90,2.58.91

COMMENT=		SAX-based render library for SVG files

# !!! /!\ make sure both distinfo are updated on version change:
# make makesum && make RUST_ARCHS= makesum
GNOME_PROJECT=		librsvg
STABLE_VERSION=		2.58.0
OLD_VERSION=		2.40.21
DISTFILES.stable=	librsvg-${STABLE_VERSION}${EXTRACT_SUFX}
DISTFILES.old= 		librsvg-${OLD_VERSION}${EXTRACT_SUFX}

SITES.stable=		${SITE_GNOME:=sources/${GNOME_PROJECT}/${STABLE_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}/}
SITES.old=		${SITE_GNOME:=sources/${GNOME_PROJECT}/${OLD_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}/}

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.arch.mk>

### stable
.if ${PROPERTIES:Mrust}
SHARED_LIBS +=  rsvg-2               41.0     # 52.0
GNOME_VERSION=		${STABLE_VERSION}
MODULES +=		devel/cargo \
			lang/python
MODCARGO_BUILD=		No
MODCARGO_INSTALL=	No
MODCARGO_TEST=		No
MODPY_RUNDEP=		No
BUILD_DEPENDS=		textproc/py-docutils${MODPY_FLAVOR}
PKG_ARGS=		-Dold=0 -Dstable=1
MAKE_ENV +=		${MODCARGO_ENV}
MAKE_FLAGS +=		V=1
WANTLIB += ${MODCARGO_WANTLIB} ${COMPILER_LIBCXX} Xau Xdmcp cairo-gobject jpeg
.else
### old
REVISION=		6
SHARED_LIBS +=  rsvg-2               38.2     # 42.20
GNOME_VERSION=		${OLD_VERSION}
PATCH_LIST=		old-patch-*
PKG_ARGS=		-Dold=1 -Dstable=0
WANTLIB += ${COMPILER_LIBCXX} croco-0.6 ffi gmodule-2.0 jpeg pcre2-8 Xau Xdmcp
LIB_DEPENDS +=		www/libcroco
CONFIGURE_ARGS +=	--disable-tools
CHECKSUM_FILE=		${.CURDIR}/distinfo.old
.endif

CATEGORIES=		devel graphics

# GPLv2/LGPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += X11 Xext Xrender c cairo expat ffi fontconfig
WANTLIB += freetype fribidi gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 harfbuzz iconv
WANTLIB += intl lzma m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre2-8
WANTLIB += pixman-1 png pthread xcb xcb-render xcb-shm xml2 z

MODULES +=		x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

LIB_DEPENDS +=		devel/pango \
			graphics/gdk-pixbuf2 \
			textproc/libxml

CONFIGURE_STYLE=	gnu

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mlld}
# error: -Bsymbolic-functions requested but not supported by ld
CONFIGURE_ARGS +=	--disable-Bsymbolic
.endif

.if ${PROPERTIES:Mrust}
.include "crates.inc"
pre-configure:
	@${MODCARGO_configure}
.endif

post-install:
	rm ${PREFIX}/lib/gdk-pixbuf-2.0/2.10.0/loaders/*.{a,la}

.include <bsd.port.mk>
