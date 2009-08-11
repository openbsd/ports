# $OpenBSD: Makefile,v 1.3 2009/08/11 08:42:08 ajacoutot Exp $

COMMENT=		tray configuration utility
DISTNAME=		matchbox-panel-manager-0.1
PKGNAME=		${DISTNAME}p1

MASTER_SITES=		${MASTER_SITES_MATCHBOX:=matchbox-panel-manager/0.1/}

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += z pthread-stubs xcb

MODULES=		devel/gettext

RUN_DEPENDS=		::devel/desktop-file-utils
LIB_DEPENDS=		gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
