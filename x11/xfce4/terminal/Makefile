# $OpenBSD: Makefile,v 1.11 2009/03/08 17:35:44 landry Exp $

COMMENT=	lightweight vte-based terminal for xfce4

XFCE_VERSION=	0.2.10
XFCE_PROJECT=	Terminal
# :L is here for a reason
PKGNAME=	${DISTNAME:L}

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
DESKTOP_FILES=	Yes

LIB_DEPENDS=	exo-0.3.>=5::x11/xfce4/exo \
		dbus-glib-1::x11/dbus-glib \
		startup-notification-1::devel/startup-notification \
		dbus-1.>=6::x11/dbus \
		vte.>=11::devel/vte

WANTLIB=	X11 atk-1.0 c gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 gobject-2.0 \
		gtk-x11-2.0 xfce4util

.include <bsd.port.mk>
