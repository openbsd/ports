# $OpenBSD: Makefile,v 1.5 2011/05/28 08:15:53 ajacoutot Exp $

COMMENT=	MAME front-end for GNOME

GNOME_PROJECT=	gnome-video-arcade
GNOME_VERSION=	0.8.0
REVISION=	3

CATEGORIES=	emulators games

HOMEPAGE=	http://mbarnes.github.com/gnome-video-arcade/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 XRes Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += c cairo cairo-gobject drm execinfo expat fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gstreamer-0.10 gthread-2.0 gtk-3 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs sqlite3 startup-notification-1 wnck-3
WANTLIB += xcb xcb-atom xcb-aux xcb-event xcb-render xcb-shm xml2
WANTLIB += z

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf

BUILD_DEPENDS=	${RUN_DEPENDS} \
		devel/glade
RUN_DEPENDS=	emulators/sdlmame,-main>=0.132p2 \
		x11/gnome/icon-theme
LIB_DEPENDS=	databases/sqlite3 \
		devel/libwnck3 \
		multimedia/gstreamer-0.10/core

DESKTOP_FILES=		Yes
MODGNOME_HELP_FILES=	Yes

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-gtk-doc \
		--with-glade-catalog \
		--with-wnck \
		--with-history-file="${LOCALBASE}/share/sdlmame/history.dat"

USE_GROFF=	Yes

.include <bsd.port.mk>
