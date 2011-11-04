# $OpenBSD: Makefile,v 1.34 2011/11/04 09:56:30 jasper Exp $

COMMENT=	MAME front-end for GNOME

GNOME_PROJECT=	gnome-video-arcade
GNOME_VERSION=	0.8.0
REVISION=	8

CATEGORIES=	emulators games

HOMEPAGE=	http://mbarnes.github.com/gnome-video-arcade/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tar.bz2

WANTLIB += GL X11 X11-xcb XRes Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 c cairo cairo-gobject drm expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gstreamer-0.10 gthread-2.0 gtk-3 m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs sqlite3 startup-notification-1
WANTLIB += wnck-3 xcb xcb-aux xcb-render xcb-shm xml2 z stdc++

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf

BUILD_DEPENDS=	${RUN_DEPENDS} \
		devel/glade
RUN_DEPENDS=	emulators/sdlmame,-main>=0.132p2 \
		x11/gnome/icon-theme \
		devel/gsettings-desktop-schemas
LIB_DEPENDS=	databases/sqlite3 \
		devel/libwnck3 \
		multimedia/gstreamer-0.10/core

MODGNOME_DESKTOP_FILE=		Yes
MODGNOME_TOOLS= yelp

CONFIGURE_ARGS=	--with-glade-catalog \
		--with-wnck \
		--with-history-file="${LOCALBASE}/share/sdlmame/history.dat"

USE_GROFF=	Yes

.include <bsd.port.mk>
