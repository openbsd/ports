# $OpenBSD: Makefile,v 1.5 2009/04/14 09:43:42 ajacoutot Exp $

# XXX: Without category, history or nplayer files for now.

COMMENT=	MAME front-end for GNOME

GNOME_PROJECT=	gnome-video-arcade
GNOME_VERSION=	0.6.6
PKGNAME=	${DISTNAME}p2

CATEGORIES=	emulators games

HOMEPAGE=	http://mbarnes.github.com/gnome-video-arcade/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 SM X11 XRes Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += c cairo dbus-1 dbus-glib-1 expat fontconfig freetype
WANTLIB += gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0
WANTLIB += glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread sqlite3 startup-notification-1
WANTLIB += xml2 z

MODULES=	devel/gettext \
		x11/gnome

BUILD_DEPENDS=	${RUN_DEPENDS} \
		::x11/gnome/icon-theme
RUN_DEPENDS=	::emulators/sdlmame,-main
LIB_DEPENDS=	wnck-1.>=24::devel/libwnck

USE_X11=	Yes
DESKTOP_FILES=	Yes
MODGNOME_HELP_FILES=Yes

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gnome-video-arcade/ \
		--disable-scrollkeeper \
		--disable-schemas-install \
		--disable-gtk-doc \
		--with-gnome \
		--with-wnck

.include <bsd.port.mk>
