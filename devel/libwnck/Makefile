# $OpenBSD: Makefile,v 1.56 2014/02/18 11:02:49 stsp Exp $

COMMENT=		window navigator construction kit

GNOME_PROJECT=		libwnck
GNOME_VERSION=		2.30.7
REVISION=		3

SHARED_LIBS +=	wnck-1               24.0     # .25.26

CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

EXTRACT_SUFX=		.tar.bz2

WANTLIB += GL X11 X11-xcb XRes Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 c cairo drm expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += startup-notification-1 xcb xcb-aux xcb-render xcb-shm
WANTLIB += z

MODULES=		devel/gettext \
			x11/gnome

MODGNOME_TOOLS= 	gi
LIB_DEPENDS=		x11/gtk+2 \
			devel/startup-notification

CONFIGURE_STYLE= 	gnu

.include <bsd.port.mk>
