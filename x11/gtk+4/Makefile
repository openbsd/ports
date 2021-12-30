# $OpenBSD: Makefile,v 1.51 2021/12/30 18:19:00 ajacoutot Exp $

# XXX add support for libcloudproviders? (-Dcloudproviders=enabled)
# XXX add support for tracker3? (-Dtracker=enabled)

DPB_PROPERTIES=		parallel

COMMENT-main=		multi-platform graphical toolkit
COMMENT-cups=		gtk+4 CUPS print backend
COMMENT-demos=		gtk+4 demo programs
COMMENT-guic=		gtk+ icon theme caching utility
COMMENT-media=		gtk+ media engine

GNOME_PROJECT=		gtk
GNOME_VERSION=		4.6.0

PKGNAME-main=		gtk+4-${GNOME_VERSION}
PKGNAME-cups=		gtk+4-cups-${GNOME_VERSION}
PKGNAME-demos=		gtk+4-demos-${GNOME_VERSION}
PKGNAME-guic=		gtk4-update-icon-cache-${GNOME_VERSION}
PKGNAME-media=		gtk+4-media-${GNOME_VERSION}

CATEGORIES=		x11 devel

SHARED_LIBS += gtk-4                     4.2 # 1.600.0

HOMEPAGE=		http://www.gtk.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=	Yes

MULTI_PACKAGES=		-main -cups -demos -guic -media

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

COMPILER=		base-clang ports-gcc ports-clang
COMPILER_LANGS=		c

MODGNOME_TOOLS=		docbook gobject-introspection gtk-update-icon-cache \
			desktop-file-utils

MODPY_RUNDEP=		No

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS=		textproc/py-docutils${MODPY_FLAVOR} \
			www/sassc

# x11/xkbcommon only needed for Wayland
LIB_DEPENDS-main=	devel/pango \
			graphics/gdk-pixbuf2 \
			graphics/graphene
RUN_DEPENDS-main=	${RUN_DEPENDS}

# convenient dependency to prevent hunting what needs what:
# some apps need more icons than the stock ones
# some apps needs the svg version of the icon (librsvg pulled in)
RUN_DEPENDS-main +=	x11/gnome/adwaita-icon-theme

WANTLIB-main += X11 Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB-main += c cairo cairo-gobject cairo-script-interpreter epoxy
WANTLIB-main += fontconfig fribidi gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB-main += gmodule-2.0 gobject-2.0 graphene-1.0 harfbuzz intl
WANTLIB-main += jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 png tiff

LIB_DEPENDS-cups=	print/cups,-libs \
			${BASE_PKGPATH},-main=${GNOME_VERSION}
RUN_DEPENDS-cups=	# empty

WANTLIB-cups += cairo cups gio-2.0 glib-2.0 gobject-2.0 gtk-4

LIB_DEPENDS-demos=	${BASE_PKGPATH},-main=${GNOME_VERSION}
RUN_DEPENDS-demos=	${RUN_DEPENDS}

WANTLIB-demos += c cairo epoxy gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB-demos += graphene-1.0 gtk-4 harfbuzz intl m pango-1.0 pangocairo-1.0
WANTLIB-demos += rsvg-2

LIB_DEPENDS-guic=	graphics/gdk-pixbuf2
RUN_DEPENDS-guic=	x11/hicolor-icon-theme

# uses pledge()
WANTLIB-guic += c gdk_pixbuf-2.0 glib-2.0 intl

# gstreamer1-plugins-bad: gstplayer-1.0
LIB_DEPENDS-media=	multimedia/gstreamer1/plugins-bad \
			${BASE_PKGPATH},-main=${GNOME_VERSION}

WANTLIB-media += gio-2.0 glib-2.0 gobject-2.0 gstgl-1.0 gstbase-1.0
WANTLIB-media += gstplayer-1.0 gstreamer-1.0 gstvideo-1.0 gtk-4 m

TEST_IS_INTERACTIVE=	x11

CONFIGURE_ARGS=		-Dwayland-backend=false \
			-Dvulkan=disabled \
			-Dman-pages=true

# preference for media-gstreamer
CONFIGURE_ARGS +=	-Dmedia-ffmpeg=disabled

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=		-Wno-error
.endif

# disable meson's default of using "-Wl,--as-needed" on ld.bfd arches;
# build failures due to undefined references are often seen.
.if !${PROPERTIES:Mlld}
CONFIGURE_ARGS +=	-Db_asneeded=false
.endif

pre-configure:
	${SUBST_CMD} ${WRKSRC}/modules/printbackends/meson.build

.include <bsd.port.mk>
