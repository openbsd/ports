# $OpenBSD: Makefile,v 1.20 2014/04/18 12:03:00 ajacoutot Exp $

COMMENT=		switch GTK+2 themes quickly

DISTNAME=		gtk-theme-switch-2.0.0rc2
PKGNAME=		${DISTNAME:S/gtk/gtk2/}
REVISION=		9
CATEGORIES=		x11 graphics

HOMEPAGE=		http://www.muhri.net/nav.php3?node=gts

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pthread z

MASTER_SITES=		http://www.muhri.net/

MODULES=		devel/gettext
LIB_DEPENDS=		x11/gtk+2

NO_TEST=		Yes

.include <bsd.port.mk>
