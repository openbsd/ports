# $OpenBSD: Makefile,v 1.17 2015/04/21 18:13:09 sthen Exp $

COMMENT=		display control panel for X.org SiS driver

DISTNAME=		sisctrl-0.0.20051202
REVISION=		9
CATEGORIES=		x11

HOMEPAGE=		http://www.winischhofer.eu/linuxsispart1.shtml\#sisctrl

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xv Xxf86vm atk-1.0 c cairo expat
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread
WANTLIB += pthread-stubs xcb z

MASTER_SITES=		http://www.winischhofer.net/sis/


MODULES=		devel/gettext

LIB_DEPENDS=		x11/gtk+2

NO_TEST=		Yes

CONFIGURE_STYLE=	simple
CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include"

.include <bsd.port.mk>
