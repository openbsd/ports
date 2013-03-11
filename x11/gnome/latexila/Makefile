# $OpenBSD: Makefile,v 1.8 2013/03/11 11:46:11 espie Exp $

COMMENT=	integrated LaTeX environment for GNOME

GNOME_PROJECT=	latexila
GNOME_VERSION=	2.6.2

CATEGORIES=	editors print

HOMEPAGE=	http://projects.gnome.org/latexila/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += atk-bridge-2.0 atspi c cairo cairo-gobject dbus-1 drm
WANTLIB += enchant expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gee gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-3 gtksourceview-3.0 harfbuzz icudata icule icuuc
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs stdc++ xcb xcb-render xcb-shm
WANTLIB += xml2 z

MODULES=	devel/dconf \
		devel/gettext \
		x11/gnome

BUILD_DEPENDS=	devel/gsettings-desktop-schemas

RUN_DEPENDS=	devel/gsettings-desktop-schemas \
		textproc/latexmk \
		devel/xdg-utils # xdg-open(1)

LIB_DEPENDS=	devel/libgee06 \
		textproc/enchant \
		x11/gtksourceview3

MODGNOME_TOOLS= 	yelp
MODGNOME_ICON_CACHE=	Yes
MODGNOME_DESKTOP_FILE=	Yes

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
