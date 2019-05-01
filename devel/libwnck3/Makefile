# $OpenBSD: Makefile,v 1.39 2019/05/01 10:06:46 ajacoutot Exp $

COMMENT=		window navigator construction kit

GNOME_PROJECT=		libwnck
GNOME_VERSION=		3.32.0
PKGNAME=		${GNOME_PROJECT}3-${GNOME_VERSION}

SHARED_LIBS += wnck-3                    4.0 # 0.3.0

CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 XRes Xext Xrender atk-1.0 c cairo cairo-gobject
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-3
WANTLIB += intl m pango-1.0 pangocairo-1.0

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection

LIB_DEPENDS=		x11/gtk+3

# add required introspection libs that are not in the dependency chain
BUILD_DEPENDS +=	devel/startup-notification
RUN_DEPENDS +=		devel/startup-notification

# prevent conflict with devel/libwnck
post-install:
	mv ${PREFIX}/bin/wnck-urgency-monitor{,3}
	mv ${PREFIX}/bin/wnckprop{,3}

.include <bsd.port.mk>
