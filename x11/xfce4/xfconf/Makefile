# $OpenBSD: Makefile,v 1.18 2017/08/30 08:46:31 landry Exp $

COMMENT=	Xfce4 settings daemon

XFCE_VERSION =	4.12.1
XFCE_PROJECT=	xfconf
REVISION =	0

PORTROACH=	limitw:1,even

SHARED_LIBS =	xfconf-0 0.1 # 2.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4
LIB_DEPENDS=	x11/xfce4/libxfce4util>=4.10.0 \
		x11/dbus-glib

CONFIGURE_ARGS=	--disable-perl-bindings --disable-linker-opts

WANTLIB += c dbus-1 dbus-glib-1 ffi gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 pcre pthread xfce4util z iconv intl

.include <bsd.port.mk>
