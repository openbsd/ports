# $OpenBSD: Makefile,v 1.2 2019/07/07 11:20:50 ajacoutot Exp $

COMMENT=		Actions, Menus and Toolbars Kit

GNOME_PROJECT=		amtk
GNOME_VERSION=		5.0.0

CATEGORIES=		devel

SHARED_LIBS +=  amtk-5                    0.0 # 0.0

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi cairo cairo-gobject
WANTLIB += dbus-1 epoxy expat ffi fontconfig freetype fribidi
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz iconv intl m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += xcb xcb-render xcb-shm z

MODULES=		x11/gnome

MODGNOME_TOOLS= 	gobject-introspection

LIB_DEPENDS=		x11/gtk+3

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-valgrind

.include <bsd.port.mk>
