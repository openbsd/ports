DPB_PROPERTIES=		parallel

COMMENT-main=		multi-platform graphical toolkit
COMMENT-cups=		gtk+4 CUPS print backend
COMMENT-demos=		gtk+4 demo programs
COMMENT-guic=		gtk+ icon theme caching utility
COMMENT-media=		gtk+ media engine

GNOME_PROJECT=		gtk
GNOME_VERSION=		4.14.4

PKGNAME-main=		gtk+4-${GNOME_VERSION}
PKGNAME-cups=		gtk+4-cups-${GNOME_VERSION}
PKGNAME-demos=		gtk+4-demos-${GNOME_VERSION}
PKGNAME-guic=		gtk4-update-icon-cache-${GNOME_VERSION}
PKGNAME-media=		gtk+4-media-${GNOME_VERSION}

CATEGORIES=		x11 devel

SHARED_LIBS += gtk-4                     5.2 # 1.1400.4

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

BUILD_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR} \
			graphics/shaderc \
			textproc/py-docutils${MODPY_FLAVOR} \
			wayland/wayland-protocols \
			www/sassc

# needs BTN_LEFT
BUILD_DEPENDS +=	wayland/libinput-openbsd

LIB_DEPENDS-main=	devel/pango \
			graphics/gdk-pixbuf2 \
			graphics/graphene \
			wayland/wayland \
			x11/xkbcommon
RUN_DEPENDS-main=	${RUN_DEPENDS}

# convenient dependency to prevent hunting what needs what:
# some apps need more icons than the stock ones
# some apps needs the svg version of the icon (librsvg pulled in)
RUN_DEPENDS-main +=	x11/gnome/adwaita-icon-theme

# uses pledge() and unveil()
WANTLIB-main += X11 Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB-main += c cairo cairo-gobject cairo-script-interpreter epoxy
WANTLIB-main += fontconfig fribidi gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB-main += gmodule-2.0 gobject-2.0 graphene-1.0 harfbuzz intl
WANTLIB-main += jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 png tiff
WANTLIB-main += wayland-client wayland-egl xkbcommon

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

WANTLIB-media += gio-2.0 glib-2.0 gobject-2.0 graphene-1.0 gstallocators-1.0
WANTLIB-media += gstgl-1.0 gstplayer-1.0 gstreamer-1.0 gstvideo-1.0
WANTLIB-media += gtk-4 m

TEST_IS_INTERACTIVE=	x11
# needs lib/gstreamer-1.0/libgstpipewire.so and the pipewire server
TEST_DEPENDS=		multimedia/pipewire/pipewire

CONFIGURE_ARGS=		-Dman-pages=true

# XXX ld: error: undefined symbol: vkCreateWaylandSurfaceKHR
CONFIGURE_ARGS +=	-Dvulkan=disabled

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=		-Wno-error
.endif

# disable meson's default of using "-Wl,--as-needed" on ld.bfd arches;
# build failures due to undefined references are often seen.
.if !${PROPERTIES:Mlld}
CONFIGURE_ARGS +=	-Db_asneeded=false
.endif

post-install:
	${INSTALL_DATA} ${FILESDIR}/settings.ini ${PREFIX}/share/gtk-4.0/
# ease transition from gtk->gtk4 update-icon-cache by providing symlinks
	ln -sf gtk4-update-icon-cache ${PREFIX}/bin/gtk-update-icon-cache
	ln -sf gtk4-update-icon-cache.1 \
		${PREFIX}/man/man1/gtk-update-icon-cache.1

.include <bsd.port.mk>
