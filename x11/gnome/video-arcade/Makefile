# $OpenBSD: Makefile,v 1.42 2013/03/11 11:46:12 espie Exp $

COMMENT=	MAME front-end for GNOME

GNOME_PROJECT=	gnome-video-arcade
GNOME_VERSION=	0.8.3
REVISION=	3

CATEGORIES=	emulators games

HOMEPAGE=	http://mbarnes.github.com/gnome-video-arcade/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 X11-xcb XRes Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 c cairo cairo-gobject drm expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gstreamer-0.10 gthread-2.0 gtk-3 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs soup-2.4 sqlite3 startup-notification-1
WANTLIB += stdc++ wnck-3 xcb xcb-aux xcb-render xcb-shm xml2 z

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	emulators/sdlmame,-main>=0.132p2 \
		x11/gnome/icon-theme \
		devel/gsettings-desktop-schemas
LIB_DEPENDS=	devel/libsoup \
		devel/libwnck3 \
		multimedia/gstreamer-0.10/core

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
MODGNOME_TOOLS= 	yelp

# XXX configure should do the right thing
MODGNOME_CPPFLAGS=	$$(pkg-config --cflags libsoup-2.4)

CONFIGURE_ARGS=	--with-wnck \
		--with-history-file="${LOCALBASE}/share/sdlmame/history.dat"

USE_GROFF=	Yes

.include <bsd.port.mk>
