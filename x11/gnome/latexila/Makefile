# $OpenBSD: Makefile,v 1.34 2015/08/18 17:17:29 ajacoutot Exp $

COMMENT=		integrated LaTeX environment for GNOME

GNOME_PROJECT=		latexila
GNOME_VERSION=		3.16.2

CATEGORIES=		editors print

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 enchant epoxy expat ffi
WANTLIB += fontconfig freetype gdk-3 gdk_pixbuf-2.0 gee-0.8 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-3 gtksourceview-3.0 gtkspell3-3 harfbuzz lzma m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs stdc++ xcb xcb-render xcb-shm
WANTLIB += xml2 z

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

BUILD_DEPENDS=		devel/gsettings-desktop-schemas

RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			textproc/latexmk \
			devel/xdg-utils # xdg-open(1)

LIB_DEPENDS=		devel/libgee \
			textproc/gtkspell3 \
			x11/gtksourceview3

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection \
			gtk-update-icon-cache vala yelp

.include <bsd.port.mk>
