COMMENT=		SAX-based render library for SVG files

# !!! /!\ make sure both distinfo are updated on version change:
# make makesum && make RUST_ARCHS= makesum
GNOME_PROJECT=		librsvg
STABLE_VERSION=		2.59.2
OLD_VERSION=		2.40.21
DISTFILES.stable=	librsvg-${STABLE_VERSION}${EXTRACT_SUFX}
DISTFILES.old= 		librsvg-${OLD_VERSION}${EXTRACT_SUFX}

SITES.stable=		${SITE_GNOME:=sources/${GNOME_PROJECT}/${STABLE_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}/}
SITES.old=		${SITE_GNOME:=sources/${GNOME_PROJECT}/${OLD_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}/}

DEBUG_PACKAGES=		${BUILD_PACKAGES}

EPOCH=			0

.include <bsd.port.arch.mk>

### stable #####################################################################
.if ${PROPERTIES:Mrust}
SHARED_LIBS += rsvg-2                    41.1 # 2.59.2
GNOME_VERSION=		${STABLE_VERSION}

# nm(1) is ${LOCALBASE}/bin/llvm-nm-${MODCLANG_VERSION};
# see pre-configure target
MODULES +=		lang/clang
MODCLANG_COMPILER_LINKS=	No
MODCLANG_RUNDEP=	No
MODULES +=		devel/cargo \
			devel/meson
MODCARGO_BUILD=		No
MODCARGO_INSTALL=	No
MODCARGO_TEST=		No
MODGNOME_TOOLS +=	gi-docgen
BUILD_DEPENDS=		devel/cargo-c
# rst2man
BUILD_DEPENDS +=	textproc/py-docutils
PKG_ARGS=		-Dold=0 -Dstable=1
MAKE_ENV +=		${MODCARGO_ENV}
MAKE_FLAGS +=		V=1
WANTLIB += ${MODCARGO_WANTLIB} cairo gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 m pango-1.0 pangocairo-1.0 xml2
# XXX Dependency dav1d found: NO. Found 1.2.1 but need: '>= 1.3.0'
CONFIGURE_ARGS +=	-Davif=disabled
.else
### old ########################################################################
REVISION=		8
SHARED_LIBS +=  rsvg-2               38.2     # 42.20
GNOME_VERSION=		${OLD_VERSION}
PATCH_LIST=		old-patch-*
PKG_ARGS=		-Dold=1 -Dstable=0
WANTLIB += ${COMPILER_LIBCXX} croco-0.6 ffi gmodule-2.0 jpeg pcre2-8 Xau Xdmcp
LIB_DEPENDS +=		www/libcroco
CONFIGURE_ARGS +=	--disable-tools
CHECKSUM_FILE=		${.CURDIR}/distinfo.old
CONFIGURE_STYLE=	gnu
WANTLIB += X11 Xext Xrender c cairo expat fontconfig freetype
WANTLIB += fribidi gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += graphite2 harfbuzz iconv intl lzma m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png xcb xcb-render xcb-shm xml2
WANTLIB += z

#.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mlld}
# error: -Bsymbolic-functions requested but not supported by ld
CONFIGURE_ARGS +=	--disable-Bsymbolic
.endif

.endif
################################################################################

CATEGORIES=		devel graphics

# GPLv2/LGPLv2
PERMIT_PACKAGE=		Yes

MODULES +=		x11/gnome

MODGNOME_TOOLS +=	gobject-introspection vala

LIB_DEPENDS +=		devel/pango \
			graphics/gdk-pixbuf2 \
			textproc/libxml

.if ${PROPERTIES:Mrust}
.include "crates.inc"
pre-configure:
	ln -sf ${LOCALBASE}/bin/llvm-nm-${MODCLANG_VERSION} ${WRKDIR}/bin/llvm-nm
	@${MODCARGO_configure}
.else
post-install:
	rm ${PREFIX}/lib/gdk-pixbuf-2.0/2.10.0/loaders/*.{a,la}
.endif

.include <bsd.port.mk>
