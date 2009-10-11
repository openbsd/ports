# $OpenBSD: Makefile,v 1.15 2009/10/11 09:54:24 landry Exp $

COMMENT=	Xfce4 vte-based terminal

XFCE_VERSION=	0.4.2
XFCE_GOODIE=	Terminal
# :L is here for a reason
PKGNAME=	${DISTNAME:L}

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
DESKTOP_FILES=	Yes

LIB_DEPENDS=	exo-0.3::x11/xfce4/exo \
		dbus-glib-1::x11/dbus-glib \
		vte::devel/vte

WANTLIB=	X11 atk-1.0 c dbus-1 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 \
		glib-2.0 gobject-2.0 gtk-x11-2.0 pango-1.0 xfce4util

.include <bsd.port.mk>
