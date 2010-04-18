# $OpenBSD: Makefile,v 1.1.1.1 2010/04/18 12:54:12 ajacoutot Exp $

COMMENT=	sytem monitor for GNOME

GNOME_PROJECT=	gnome-system-monitor
GNOME_VERSION=	2.28.1

CATEGORIES=	sysutils

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 SM X11 XRes Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += bz2 c cairo cairomm-1.0 croco-0.6 dbus-1 dbus-glib-1
WANTLIB += execinfo expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 glitz gmodule-2.0
WANTLIB += gobject-2.0 gsf-1 gthread-2.0 gtk-x11-2.0 kvm m pangomm-1.4
WANTLIB += pcre pixman-1 png pthread pthread-stubs rsvg-2 sigc-2.0
WANTLIB += stdc++ xcb xcb-atom xcb-aux xcb-event xcb-render xcb-render-util
WANTLIB += xml2 z

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

RUN_DEPENDS=	::x11/gnome/icon-theme
BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS=	gtkmm-2.4.>=9,atkmm-1.6,gdkmm-2.4::x11/gtk2mm \
		gtop-2.0.>=9:libgtop2->=2.28.1p8:devel/libgtop2 \
		startup-notification-1.>=2::devel/startup-notification \
		pango-1.0.>=1801,pangoft2-1.0,pangocairo-1.0::devel/pango \
		wnck-1.>=24::devel/libwnck

USE_X11=	Yes
DESKTOP_FILES=	Yes
MODGNOME_HELP_FILES= Yes
MODGCONF2_SCHEMAS_DIR= gnome-applets2

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURED_SHARED}

.include <bsd.port.mk>
