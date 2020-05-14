# $OpenBSD: Makefile,v 1.41 2020/05/14 14:52:42 ajacoutot Exp $

COMMENT=		window navigator construction kit

GNOME_PROJECT=		libwnck
GNOME_VERSION=		3.36.0
PKGNAME=		${GNOME_PROJECT}3-${GNOME_VERSION}

SHARED_LIBS += wnck-3                    4.1 # 0.3.0

CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 XRes Xrender atk-1.0 c cairo gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 intl m pango-1.0
WANTLIB += startup-notification-1

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection

LIB_DEPENDS=		devel/startup-notification \
			x11/gtk+3

DEBUG_PACKAGES=		${BUILD_PACKAGES}

# prevent conflict with devel/libwnck
post-install:
	mv ${PREFIX}/bin/wnck-urgency-monitor{,3}
	mv ${PREFIX}/bin/wnckprop{,3}

.include <bsd.port.mk>
