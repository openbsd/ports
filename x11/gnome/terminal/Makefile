# $OpenBSD: Makefile,v 1.87 2013/03/11 11:46:12 espie Exp $

COMMENT=	GNOME terminal

GNOME_PROJECT=	gnome-terminal
GNOME_VERSION=	3.6.1
REVISION=	0

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += c cairo cairo-gobject dbus-1 dbus-glib-1 drm expat
WANTLIB += ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 gtk-3
WANTLIB += m ncurses pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs stdc++ util vte2_90
WANTLIB += xcb xcb-render xcb-shm z
WANTLIB += atk-bridge-2.0 atspi harfbuzz icudata icule icuuc

MODULES=	devel/gconf2 \
		devel/gettext \
		x11/gnome

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/gsettings-desktop-schemas
LIB_DEPENDS=	devel/vte3

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE=	Yes
MODGCONF2_SCHEMAS_DIR=	gnome-terminal

# XXX check on update if this is still needed
# gtk-builder-convert is needed at build time to convert glade files to ui
MODULES +=		lang/python
MODPY_RUNDEP =		No
BUILD_DEPENDS +=	x11/gtk+2

.include <bsd.port.mk>
