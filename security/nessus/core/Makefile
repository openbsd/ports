# $OpenBSD: Makefile,v 1.17 2007/06/01 05:50:36 aanriot Exp $

COMMENT=	"network security scanner"
DISTNAME=	nessus-core-${V}
PKGNAME=	${DISTNAME}p2

FLAVORS=	no_x11
FLAVOR?=

WANTLIB=	c crypto hosts_gatherer m nessus pcap rpcsvc ssl util

LIB_DEPENDS=	nasl.>=4::security/nessus/libnasl
BUILD_DEPENDS=	:bison-*:devel/bison

.if empty(FLAVOR:L:Mno_x11)
USE_X11=	Yes
MODULES=	devel/gettext
WANTLIB+=	atk-1.0 cairo.>=4 expat fontconfig freetype glib-2.0 \
		gmodule-2.0 gobject-2.0 pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 glitz png X11 Xau Xcursor Xdmcp Xext \
		Xrender Xfixes Xi Xinerama Xrandr z
LIB_DEPENDS+=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2
CONFIGURE_ARGS+=--enable-gtk
.else
CONFIGURE_ARGS+=--disable-gtk
.endif

.include <bsd.port.mk>
