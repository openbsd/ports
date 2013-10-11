# $OpenBSD: Makefile,v 1.16 2013/10/11 23:51:53 naddy Exp $

COMMENT=		display control panel for X.org SiS driver

DISTNAME=		sisctrl-0.0.20051202
REVISION=		8
CATEGORIES=		x11

HOMEPAGE=		http://www.winischhofer.eu/linuxsispart1.shtml\#sisctrl

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://www.winischhofer.net/sis/

WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender Xv Xxf86vm atk-1.0
WANTLIB += c cairo expat fontconfig freetype gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pixman-1 png z
WANTLIB += pthread-stubs xcb gtk-x11-2.0 gdk_pixbuf-2.0 gdk-x11-2.0

MODULES=		devel/gettext

LIB_DEPENDS=		x11/gtk+2

NO_TEST=		Yes

CONFIGURE_STYLE=	simple
CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include"

.include <bsd.port.mk>
