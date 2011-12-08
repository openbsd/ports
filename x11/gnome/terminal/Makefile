# $OpenBSD: Makefile,v 1.81 2011/12/08 08:05:54 ajacoutot Exp $

COMMENT=	GNOME terminal

GNOME_PROJECT=	gnome-terminal
GNOME_VERSION=	3.2.1
REVISION=	1

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gconf2 \
		devel/gettext \
		x11/gnome

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 c cairo cairo-gobject drm expat fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-3 m ncurses pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += vte2_90 xcb xcb-render xcb-shm z ffi dbus-1 dbus-glib-1 stdc++

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
