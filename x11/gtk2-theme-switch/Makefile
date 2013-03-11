# $OpenBSD: Makefile,v 1.19 2013/03/11 11:46:13 espie Exp $

COMMENT=		switch GTK+2 themes quickly

DISTNAME=		gtk-theme-switch-2.0.0rc2
PKGNAME=		${DISTNAME:S/gtk/gtk2/}
REVISION=		8
CATEGORIES=		x11 graphics

HOMEPAGE=		http://www.muhri.net/nav.php3?node=gts

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += z pthread-stubs xcb gtk-x11-2.0 gdk_pixbuf-2.0 gdk-x11-2.0

MASTER_SITES=		http://www.muhri.net/

MODULES=		devel/gettext
LIB_DEPENDS=		x11/gtk+2

USE_GROFF =		Yes
NO_TEST=		Yes

.include <bsd.port.mk>
