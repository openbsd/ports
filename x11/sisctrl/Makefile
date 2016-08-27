# $OpenBSD: Makefile,v 1.18 2016/08/27 19:49:48 jca Exp $

COMMENT=		display control panel for X.org SiS driver

DISTNAME=		sisctrl-0.0.20051202
REVISION=		10
CATEGORIES=		x11

HOMEPAGE=		http://www.winischhofer.eu/linuxsispart1.shtml\#sisctrl

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xv Xxf86vm atk-1.0 c cairo
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gobject-2.0 gtk-x11-2.0 intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 z

MASTER_SITES=		http://www.winischhofer.net/sis/

LIB_DEPENDS=		devel/gettext \
			x11/gtk+2

NO_TEST=		Yes

CONFIGURE_STYLE=	simple
CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include"

.include <bsd.port.mk>
