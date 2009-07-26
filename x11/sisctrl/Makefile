# $OpenBSD: Makefile,v 1.5 2009/07/26 20:09:18 naddy Exp $

COMMENT=		Display Control Panel for X.org SiS driver

DISTNAME=		sisctrl-0.0.20051202
PKGNAME=		${DISTNAME}p3
CATEGORIES=		x11

HOMEPAGE=		http://www.winischhofer.eu/linuxsispart1.shtml\#sisctrl

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.winischhofer.net/sis/

WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender Xv Xxf86vm atk-1.0
WANTLIB += c cairo expat fontconfig freetype gio-2.0 glib-2.0
WANTLIB += glitz gmodule-2.0 gobject-2.0 iconv intl m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pixman-1 png z

LIB_DEPENDS=		gtk-x11-2.0.>=1000,gdk_pixbuf-2.0.>=1000,gdk-x11-2.0.>=1000::x11/gtk+2

NO_REGRESS=		Yes

USE_X11=		Yes
CONFIGURE_STYLE=	simple
CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include"

.include <bsd.port.mk>
