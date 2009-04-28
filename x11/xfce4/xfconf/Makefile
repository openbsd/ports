# $OpenBSD: Makefile,v 1.2 2009/04/28 19:52:38 landry Exp $

COMMENT=	Xfce4 settings daemon

XFCE_PROJECT=	xfconf
SHARED_LIBS =	xfconf-0 0.0

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
LIB_DEPENDS=	xfce4util::x11/xfce4/libxfce4util \
		dbus-glib-1::x11/dbus-glib

CONFIGURE_ARGS=	--disable-perl-bindings

WANTLIB=	c dbus-1 glib-2.0 gobject-2.0 pcre pthread

.include <bsd.port.mk>
