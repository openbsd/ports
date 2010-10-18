# $OpenBSD: Makefile,v 1.10 2010/10/18 13:18:15 jasper Exp $

COMMENT=	sytem monitor for GNOME

GNOME_PROJECT=	gnome-system-monitor
GNOME_VERSION=	2.28.2
REVISION=	0

CATEGORIES=	sysutils

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 SM X11 XRes Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += c cairo cairomm-1.0 croco-0.6 dbus-1 dbus-glib-1
WANTLIB += execinfo expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 kvm m pangomm-1.4
WANTLIB += pcre pixman-1 png pthread pthread-stubs sigc-2.0 stdc++
WANTLIB += xcb xcb-atom xcb-aux xcb-event xcb-render xcb-render-util
WANTLIB += xml2 z gtkmm-2.4 atkmm-1.6 gdkmm-2.4 gtop-2.0 pango-1.0
WANTLIB += pangoft2-1.0 pangocairo-1.0 startup-notification-1 wnck-1 rsvg-2

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

RUN_DEPENDS=	::x11/gnome/icon-theme
BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS=	::x11/gtk2mm \
		:libgtop2->=2.28.1p8:devel/libgtop2 \
		::devel/startup-notification \
		::devel/pango \
		::devel/libwnck \
		::x11/gnome/librsvg

DESKTOP_FILES=	Yes
MODGNOME_HELP_FILES= Yes
MODGCONF2_SCHEMAS_DIR= gnome-applets2

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURED_SHARED}

.include <bsd.port.mk>
