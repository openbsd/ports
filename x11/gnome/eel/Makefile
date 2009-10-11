# $OpenBSD: Makefile,v 1.40 2009/10/11 13:54:18 jasper Exp $

COMMENT=		Eazel Extensions Library

GNOME_PROJECT=		eel
GNOME_VERSION=		2.26.0

SHARED_LIBS +=	eel-2                23.0     # .28.0
CATEGORIES=		devel

# GPLv2/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 cairo
WANTLIB += dbus-1 dbus-glib-1 execinfo expat fontconfig freetype
WANTLIB += gailutil gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread-stubs xcb xcb-atom xcb-aux
WANTLIB += xcb-event xml2 z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		startup-notification-1::devel/startup-notification \
			gnome-desktop-2.>=7::x11/gnome/desktop

USE_X11=		Yes
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

REGRESS_IS_INTERACTIVE= x11

.include <bsd.port.mk>
