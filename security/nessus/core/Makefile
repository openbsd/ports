# $OpenBSD: Makefile,v 1.21 2009/08/10 06:34:29 kili Exp $

COMMENT=	network security scanner
DISTNAME=	nessus-core-${V}
PKGNAME=	${DISTNAME}p5

FLAVORS=	no_x11
FLAVOR?=

WANTLIB += c crypto hosts_gatherer m nessus pcap rpcsvc ssl util

LIB_DEPENDS=	nasl.>=4::security/nessus/libnasl
BUILD_DEPENDS=	:bison-*:devel/bison

.if empty(FLAVOR:L:Mno_x11)
USE_X11=	Yes
MODULES=	devel/gettext
WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread-stubs xcb z
LIB_DEPENDS+=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2
CONFIGURE_ARGS+=--enable-gtk
.else
CONFIGURE_ARGS+=--disable-gtk
.endif

.include <bsd.port.mk>
