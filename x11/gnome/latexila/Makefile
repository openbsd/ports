# $OpenBSD: Makefile,v 1.45 2016/07/30 14:21:09 ajacoutot Exp $

COMMENT=		integrated LaTeX environment for GNOME

GNOME_PROJECT=		latexila
GNOME_VERSION=		3.20.1

CATEGORIES=		editors print

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 enchant epoxy expat ffi
WANTLIB += fontconfig freetype gdk-3 gdk_pixbuf-2.0 gee-0.8 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gspell-1
WANTLIB += gthread-2.0 gtk-3 gtksourceview-3.0 harfbuzz iconv
WANTLIB += intl lzma m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs stdc++ xcb xcb-render
WANTLIB += xcb-shm xml2 z

MODULES=		devel/dconf \
			x11/gnome

BUILD_DEPENDS=		devel/gsettings-desktop-schemas

RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			textproc/latexmk \
			devel/xdg-utils # xdg-open(1)

LIB_DEPENDS=		devel/libgee \
			textproc/gspell \
			x11/gtksourceview3

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection \
			gtk-update-icon-cache vala yelp

AUTOCONF_VERSION=	2.69
CONFIGURE_STYLE=	autoconf

.include <bsd.port.mk>
