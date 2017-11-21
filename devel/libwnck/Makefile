# $OpenBSD: Makefile,v 1.66 2017/11/21 00:13:00 naddy Exp $

PORTROACH+=		limit:^2

COMMENT=		window navigator construction kit

GNOME_PROJECT=		libwnck
GNOME_VERSION=		2.30.7
REVISION=		8

SHARED_LIBS +=	wnck-1               24.0     # .25.26

CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =  X11 X11-xcb XRes Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 c cairo expat ffi fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0
WANTLIB += harfbuzz iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread startup-notification-1 xcb
WANTLIB += xcb-render xcb-shm xcb-util z

EXTRACT_SUFX=		.tar.bz2


MODULES=		x11/gnome

MODGNOME_TOOLS +=	gobject-introspection

LIB_DEPENDS=		x11/gtk+2 \
			devel/startup-notification

CONFIGURE_STYLE= 	gnu

.include <bsd.port.mk>
