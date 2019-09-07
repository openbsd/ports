# $OpenBSD: Makefile,v 1.4 2019/09/07 12:18:21 ajacoutot Exp $

COMMENT=		Actions, Menus and Toolbars Kit

GNOME_PROJECT=		amtk
GNOME_VERSION=		5.0.1
REVISION=		0

CATEGORIES=		devel

SHARED_LIBS +=  amtk-5                    0.0 # 0.0

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 cairo cairo-gobject
WANTLIB += epoxy expat ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz iconv intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread xcb xcb-render
WANTLIB += xcb-shm z

MODULES=		x11/gnome

MODGNOME_TOOLS= 	gobject-introspection

LIB_DEPENDS=		x11/gtk+3

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-valgrind

.include <bsd.port.mk>
