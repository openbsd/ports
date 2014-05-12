# $OpenBSD: Makefile,v 1.24 2014/05/12 13:41:58 ajacoutot Exp $

COMMENT=	integrated LaTeX environment for GNOME

GNOME_PROJECT=	latexila
GNOME_VERSION=	2.12.1

CATEGORIES=	editors print

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 enchant expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gee gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += gtksourceview-3.0 gtkspell3-3 harfbuzz m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs stdc++ xcb xcb-render xcb-shm xml2 z

MODULES=	devel/dconf \
		devel/gettext \
		x11/gnome

BUILD_DEPENDS=	devel/gsettings-desktop-schemas

RUN_DEPENDS=	devel/gsettings-desktop-schemas \
		textproc/latexmk \
		devel/xdg-utils #xdg-open(1)

LIB_DEPENDS=	devel/libgee06 \
		textproc/gtkspell3 \
		x11/gtksourceview3

MODGNOME_TOOLS += desktop-file-utils gtk-update-icon-cache yelp

.include <bsd.port.mk>
