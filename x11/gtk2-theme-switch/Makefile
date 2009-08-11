# $OpenBSD: Makefile,v 1.11 2009/08/11 08:42:08 ajacoutot Exp $

COMMENT=		switch GTK+2 themes quickly

DISTNAME=		gtk-theme-switch-2.0.0rc2
PKGNAME=		${DISTNAME:S/gtk/gtk2/}p6
CATEGORIES=		x11 graphics

HOMEPAGE=		http://www.muhri.net/nav.php3?node=gts

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += z pthread-stubs xcb

MASTER_SITES=		http://www.muhri.net/

MODULES=		devel/gettext
LIB_DEPENDS=		gtk-x11-2.0,gdk_pixbuf-2.0,gdk-x11-2.0::x11/gtk+2

USE_X11=		Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
