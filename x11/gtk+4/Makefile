DPB_PROPERTIES=		parallel

COMMENT-main=		multi-platform graphical toolkit
COMMENT-demos=		gtk+4 demo programs
COMMENT-guic=		gtk+ icon theme caching utility

GNOME_PROJECT=		gtk
GNOME_VERSION=		4.20.0

PKGNAME-main=		gtk+4-${GNOME_VERSION}
PKGNAME-demos=		gtk+4-demos-${GNOME_VERSION}
PKGNAME-guic=		gtk4-update-icon-cache-${GNOME_VERSION}

CATEGORIES=		x11 devel

SHARED_LIBS += gtk-4                     5.5 # 1.2000.0

HOMEPAGE=		http://www.gtk.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=	Yes

MULTI_PACKAGES=		-main -demos -guic

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

# gtk+4 is just C, but C++ used for a test program
COMPILER=		base-clang ports-gcc

MODGNOME_TOOLS=		docbook gobject-introspection gtk-update-icon-cache \
			desktop-file-utils

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS=		devel/py-gobject3 \
			graphics/shaderc \
			textproc/py-docutils \
			wayland/wayland-protocols>=1.41p0 \
			www/sassc

# bash-completion
BUILD_DEPENDS +=	shells/bash \
			shells/bash-completion

# needs BTN_LEFT
BUILD_DEPENDS +=	wayland/libinput-openbsd

LIB_DEPENDS-main=	devel/pango \
			graphics/gdk-pixbuf2 \
			graphics/graphene \
			graphics/vulkan-loader \
			print/cups,-libs \
			wayland/wayland \
			x11/xkbcommon

# gst-plugins-bad: gstplay-1.0
LIB_DEPENDS-main +=	multimedia/gstreamer1/plugins-bad

RUN_DEPENDS-main=	${RUN_DEPENDS}

# convenient dependency to prevent hunting what needs what:
# some apps need more icons than the stock ones
# some apps needs the svg version of the icon (librsvg pulled in)
RUN_DEPENDS-main +=	x11/gnome/adwaita-icon-theme

# uses pledge() and unveil()
WANTLIB-main += X11 Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB-main += c cairo cairo-gobject cairo-script-interpreter cups
WANTLIB-main += epoxy fontconfig fribidi gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB-main += gmodule-2.0 gobject-2.0 graphene-1.0 gstallocators-1.0
WANTLIB-main += gstgl-1.0 gstplay-1.0 gstreamer-1.0 gstvideo-1.0 harfbuzz
WANTLIB-main += harfbuzz-subset intl jpeg m pango-1.0 pangocairo-1.0
WANTLIB-main += pangoft2-1.0 png rsvg-2 tiff vulkan wayland-client
WANTLIB-main += wayland-egl xkbcommon

LIB_DEPENDS-demos=	${BASE_PKGPATH},-main=${GNOME_VERSION}
RUN_DEPENDS-demos=	${RUN_DEPENDS}

WANTLIB-demos += c cairo epoxy gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB-demos += graphene-1.0 gtk-4 harfbuzz intl m pango-1.0 pangocairo-1.0
WANTLIB-demos += rsvg-2

LIB_DEPENDS-guic=	graphics/gdk-pixbuf2
RUN_DEPENDS-guic=	x11/hicolor-icon-theme

# uses pledge()
WANTLIB-guic += c gdk_pixbuf-2.0 glib-2.0 intl

TEST_IS_INTERACTIVE=	x11
# needs lib/gstreamer-1.0/libgstpipewire.so and the pipewire server
TEST_DEPENDS=		multimedia/pipewire/pipewire

CONFIGURE_ARGS=		-Dman-pages=true
# disable use of ifuncs to fix build with llvm 19

CONFIGURE_ARGS+=	-Df16c=disabled

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
	${SUBST_CMD} ${WRKSRC}/gtk/print/gtkprintoperation-unix.c

post-install:
	${INSTALL_DATA} ${FILESDIR}/settings.ini ${PREFIX}/share/gtk-4.0/
# ease transition from gtk->gtk4 update-icon-cache by providing symlinks
	ln -sf gtk4-update-icon-cache ${PREFIX}/bin/gtk-update-icon-cache
	ln -sf gtk4-update-icon-cache.1 \
		${PREFIX}/man/man1/gtk-update-icon-cache.1

.include <bsd.port.mk>
