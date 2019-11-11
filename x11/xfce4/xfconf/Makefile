# $OpenBSD: Makefile,v 1.22 2019/11/11 20:49:28 landry Exp $

COMMENT=	Xfce4 settings daemon

XFCE_VERSION =	4.14.1
XFCE_PROJECT=	xfconf
SHARED_LIBS =	xfconf-0 1.0 # 2.0
HOMEPAGE =	https://docs.xfce.org/xfce/xfconf/start
REVISION =	0

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4
LIB_DEPENDS=	x11/xfce4/libxfce4util
BUILD_DEPENDS += devel/gobject-introspection lang/vala

CONFIGURE_ARGS=	--disable-perl-bindings --disable-linker-opts
CONFIGURE_ARGS+=--disable-gsettings-backend
WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 pcre pthread xfce4util z iconv intl

.include <bsd.port.mk>
