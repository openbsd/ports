# $OpenBSD: Makefile,v 1.7 2011/10/14 12:22:00 jasper Exp $

COMMENT=	Xfce4 settings daemon

XFCE_PROJECT=	xfconf
SHARED_LIBS =	xfconf-0 0.0
REVISION =      0

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
LIB_DEPENDS=	x11/xfce4/libxfce4util>=4.8.0 \
		x11/dbus-glib

CONFIGURE_ARGS=	--disable-perl-bindings --disable-linker-opts

WANTLIB += c dbus-1 dbus-glib-1 ffi gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 pcre pthread xfce4util z

.include <bsd.port.mk>
