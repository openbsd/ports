# $OpenBSD: Makefile,v 1.5 2005/09/27 18:50:31 msf Exp $

COMMENT=	"network security scanner"

DISTNAME=	nessus-core-${VERSION}
PKGNAME=	${DISTNAME}p1

FLAVORS=	no_x11
FLAVOR?=

WANTLIB=   	c crypto m pcap ssl util hosts_gatherer nessus

LIB_DEPENDS=    nasl.4::security/nessus/libnasl
BUILD_DEPENDS= 	:bison-*:devel/bison

.if empty(FLAVOR:L:Mno_x11)
MODULES=    	devel/gettext
WANTLIB+=	X11 Xft Xrender atk-1.0.0.0 fontconfig \
		freetype glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 \
		pango-1.0.0.0 pangox-1.0.0.0 pangoxft-1.0.0.0
BUILD_DEPENDS+=	::devel/pkgconfig
LIB_DEPENDS+=	gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2
CONFIGURE_ARGS+=--enable-gtk
.else
CONFIGURE_ARGS+=--disable-gtk
.endif

.include <bsd.port.mk>
