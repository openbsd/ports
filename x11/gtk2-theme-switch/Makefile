# $OpenBSD: Makefile,v 1.22 2019/07/12 20:51:12 sthen Exp $

COMMENT=		switch GTK+2 themes quickly

DISTNAME=		gtk-theme-switch-2.0.0rc2
PKGNAME=		${DISTNAME:S/gtk/gtk2/}
REVISION=		10
CATEGORIES=		x11 graphics

HOMEPAGE=		http://www.muhri.net/nav.php3?node=gts

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 c cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0 iconv
WANTLIB += intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread z

MASTER_SITES=		http://www.muhri.net/

LIB_DEPENDS=		x11/gtk+2

NO_TEST=		Yes

.include <bsd.port.mk>
