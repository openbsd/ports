# $OpenBSD: Makefile,v 1.23 2014/04/01 15:31:45 jasper Exp $

COMMENT=		window navigator construction kit

GNOME_PROJECT=		libwnck
GNOME_VERSION=		3.4.7
PKGNAME=		${GNOME_PROJECT}3-${GNOME_VERSION}
REVISION=		1

SHARED_LIBS +=  wnck-3               2.0      # 2.0

CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 X11-xcb XRes Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject dbus-1 expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs startup-notification-1 xcb
WANTLIB += xcb-aux xcb-render xcb-shm z

MODULES=		devel/gettext \
			x11/gnome

MODGNOME_TOOLS= 	gobject-introspection
LIB_DEPENDS=		x11/gtk+3 \
			devel/startup-notification

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	--enable-startup-notification \
			--program-suffix=3

.include <bsd.port.mk>
