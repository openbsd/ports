DPB_PROPERTIES=		parallel

PORTROACH=		skipv:3.90.0,3.92.1,3.93.0,3.94.0

COMMENT-main=		multi-platform graphical toolkit
COMMENT-cups=		gtk+3 CUPS print backend

GNOME_PROJECT=		gtk+
GNOME_VERSION=		3.24.42

PKGNAME-main=		gtk+3-${GNOME_VERSION}
PKGNAME-cups=		gtk+3-cups-${GNOME_VERSION}

CATEGORIES=		x11 devel

SHARED_LIBS += gdk-3                     2201.1 # 0.2410.32
SHARED_LIBS += gtk-3                     2201.0 # 0.2410.32
SHARED_LIBS += gailutil-3                0.0 # 0.0.0

HOMEPAGE=		http://www.gtk.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=		Yes

MULTI_PACKAGES=		-main -cups

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

# XXX gtk/gtkfontchooserwidget.c:1678: error:
# type qualifiers ignored on function return type
COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

BUILD_DEPENDS=		wayland/wayland-protocols

# needs BTN_LEFT
BUILD_DEPENDS +=	wayland/libinput-openbsd

DEBUG_PACKAGES=		${BUILD_PACKAGES}

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			devel/pango \
			graphics/gdk-pixbuf2 \
			wayland/wayland \
			x11/gnome/at-spi2-core \
			x11/xkbcommon
RUN_DEPENDS-main=	${RUN_DEPENDS} \
			x11/hicolor-icon-theme

# convenient dependency to prevent hunting what needs what:
# some apps need more icons than the stock ones
# some apps needs the svg version of the icon (librsvg pulled in)
RUN_DEPENDS-main +=	x11/gnome/adwaita-icon-theme

# uses pledge() and unveil()
WANTLIB-main += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB-main += Xrandr atk-1.0 atk-bridge-2.0 c cairo cairo-gobject
WANTLIB-main += epoxy fontconfig fribidi gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB-main += gmodule-2.0 gobject-2.0 harfbuzz intl m pango-1.0 pangocairo-1.0
WANTLIB-main += pangoft2-1.0 wayland-client wayland-cursor wayland-egl
WANTLIB-main += xkbcommon

LIB_DEPENDS-cups=	${LIB_DEPENDS} \
			print/cups,-libs \
			${BASE_PKGPATH},-main=${GNOME_VERSION}
RUN_DEPENDS-cups=

WANTLIB-cups += cairo cups gdk-3 gio-2.0 glib-2.0 gobject-2.0 gtk-3

MODGNOME_TOOLS=		docbook gobject-introspection gtk-update-icon-cache \
			desktop-file-utils

TEST_IS_INTERACTIVE=	x11

CONFIGURE_ARGS=		-Dprint_backends="cups,file,lpr" \
			-Dman=true

# !!! Disable colord until proven useful
CONFIGURE_ARGS +=	-Dcolord=no

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=	-std=gnu99
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gtk+3
	mv ${WRKINST}${SYSCONFDIR}/gtk-3.0 ${PREFIX}/share/examples/gtk+3
# own the directory
	${INSTALL_DATA_DIR} ${PREFIX}/lib/gtk-3.0/modules
# gtk-update-icon-cache is provided by x11/gtk+4,-guic
	rm ${PREFIX}/bin/gtk-update-icon-cache \
		${PREFIX}/man/man1/gtk-update-icon-cache.1

.include <bsd.port.mk>
