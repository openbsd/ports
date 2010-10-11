# $OpenBSD: Makefile,v 1.19 2010/10/11 08:19:20 jasper Exp $

COMMENT=	MAME front-end for GNOME

GNOME_PROJECT=	gnome-video-arcade
GNOME_VERSION=	0.6.8
REVISION=	3

CATEGORIES=	emulators games

HOMEPAGE=	http://mbarnes.github.com/gnome-video-arcade/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 SM X11 XRes Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += c cairo dbus-1 dbus-glib-1 execinfo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs sqlite3 startup-notification-1
WANTLIB += xcb xcb-atom xcb-aux xcb-event z
WANTLIB += xcb-render xcb-render-util sqlite3 wnck-1

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

BUILD_DEPENDS=	${RUN_DEPENDS} \
		::x11/gnome/icon-theme
RUN_DEPENDS=	:sdlmame->=0.132p2:emulators/sdlmame,-main
LIB_DEPENDS=	::databases/sqlite3 \
		::devel/libwnck

USE_X11=		Yes
DESKTOP_FILES=		Yes
MODGNOME_HELP_FILES=	Yes
MODGCONF2_SCHEMAS_DIR=  gnome-video-arcade

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-scrollkeeper \
		--disable-gtk-doc \
		--with-gnome \
		--with-wnck \
		--with-history-file="${LOCALBASE}/share/sdlmame/history.dat"

.include <bsd.port.mk>
