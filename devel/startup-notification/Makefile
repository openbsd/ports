COMMENT=		library for tracking application startup

GNOME_PROJECT=		startup-notification
GNOME_VERSION=		0.12
REVISION=		8

CATEGORIES=		devel

SHARED_LIBS +=  startup-notification-1 2.0      # .0.0

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/startup-notification

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 X11-xcb Xau Xdmcp xcb xcb-util

MODULES=		x11/gnome

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
