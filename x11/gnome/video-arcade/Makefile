# $OpenBSD: Makefile,v 1.11 2009/10/20 15:24:16 jasper Exp $

# XXX: Without category, history or nplayer files for now.

COMMENT=	MAME front-end for GNOME

GNOME_PROJECT=	gnome-video-arcade
GNOME_VERSION=	0.6.7
PKGNAME=	${DISTNAME}p4

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
WANTLIB += glitz gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs sqlite3 startup-notification-1
WANTLIB += xcb xcb-atom xcb-aux xcb-event xml2 z

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

BUILD_DEPENDS=	${RUN_DEPENDS} \
		::x11/gnome/icon-theme
RUN_DEPENDS=	::emulators/sdlmame,-main
LIB_DEPENDS=	glade-2.0::devel/libglade2 \
		wnck-1.>=24::devel/libwnck

USE_X11=	Yes
DESKTOP_FILES=	Yes
MODGNOME_HELP_FILES=Yes
MODGCONF2_SCHEMAS_DIR= gnome-video-arcade

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-scrollkeeper \
		--disable-gtk-doc \
		--with-gnome \
		--with-wnck

.include <bsd.port.mk>
