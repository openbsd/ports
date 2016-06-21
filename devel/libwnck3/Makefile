# $OpenBSD: Makefile,v 1.32 2016/06/21 15:00:17 ajacoutot Exp $

COMMENT=		window navigator construction kit

GNOME_PROJECT=		libwnck
GNOME_VERSION=		3.20.0
PKGNAME=		${GNOME_PROJECT}3-${GNOME_VERSION}

SHARED_LIBS +=  wnck-3               3.0      # 2.2

CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 X11-xcb XRes Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject dbus-1 epoxy expat ffi
WANTLIB += fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += harfbuzz iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs startup-notification-1
WANTLIB += xcb xcb-render xcb-shm xcb-util z

MODULES=		x11/gnome

MODGNOME_TOOLS=		gobject-introspection

LIB_DEPENDS=		devel/startup-notification \
			x11/gtk+3

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS= 	--program-suffix=3

.include <bsd.port.mk>
