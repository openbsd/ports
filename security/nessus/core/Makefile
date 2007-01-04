# $OpenBSD: Makefile,v 1.13 2007/01/04 20:19:54 steven Exp $

COMMENT=	"network security scanner"
DISTNAME=	nessus-core-${V}
PKGNAME=	${DISTNAME}p0

FLAVORS=	no_x11
FLAVOR?=

WANTLIB=	c crypto m pcap rpcsvc ssl util hosts_gatherer nessus

LIB_DEPENDS=	nasl.>=4::security/nessus/libnasl
BUILD_DEPENDS=	:bison-*:devel/bison

.if empty(FLAVOR:L:Mno_x11)
USE_X11=	Yes
MODULES=	devel/gettext
WANTLIB+=	X11 Xext Xrender atk-1.0 fontconfig freetype z glib-2.0 \
		cairo.>=4 gmodule-2.0 gobject-2.0 pango-1.0 glitz png \
		pangocairo-1.0 pangoft2-1.0
LIB_DEPENDS+=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2
CONFIGURE_ARGS+=--enable-gtk
.else
CONFIGURE_ARGS+=--disable-gtk
.endif

.include <bsd.port.mk>
