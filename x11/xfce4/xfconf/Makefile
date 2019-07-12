# $OpenBSD: Makefile,v 1.20 2019/07/12 20:51:29 sthen Exp $

COMMENT=	Xfce4 settings daemon

XFCE_VERSION =	4.12.1
XFCE_PROJECT=	xfconf
REVISION =	1
HOMEPAGE =	https://docs.xfce.org/xfce/xfconf/start

PORTROACH=	limitw:1,even

SHARED_LIBS =	xfconf-0 0.1 # 2.0

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4
LIB_DEPENDS=	x11/xfce4/libxfce4util>=4.10.0 \
		x11/dbus-glib

CONFIGURE_ARGS=	--disable-perl-bindings --disable-linker-opts

WANTLIB += c dbus-1 dbus-glib-1 ffi gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 pcre pthread xfce4util z iconv intl

.include <bsd.port.mk>
