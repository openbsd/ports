COMMENT=		Actions, Menus and Toolbars Kit

GNOME_PROJECT=		amtk
GNOME_VERSION=		5.2.0

CATEGORIES=		devel

SHARED_LIBS +=  amtk-5                    0.1 # 0.0

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += cairo cairo-gobject epoxy expat ffi fontconfig freetype
WANTLIB += fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gtk-3 harfbuzz iconv intl m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png xcb xcb-render
WANTLIB += xcb-shm z

MODULES=		x11/gnome

MODGNOME_TOOLS= 	gobject-introspection

LIB_DEPENDS=		x11/gtk+3

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-valgrind

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
