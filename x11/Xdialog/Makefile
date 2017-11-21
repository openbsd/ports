# $OpenBSD: Makefile,v 1.21 2017/11/21 00:13:04 naddy Exp $

COMMENT=	X11 counterpart of curses-based misc/dialog

DISTNAME=	Xdialog-2.3.1
REVISION=	7
CATEGORIES=	x11 misc

HOMEPAGE=	http://xdialog.free.fr/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =  GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 iconv intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread xcb xcb-render xcb-shm z

MASTER_SITES=	http://xdialog.free.fr/
EXTRACT_SUFX=	.tar.bz2

BUILD_DEPENDS=	devel/gettext-tools
LIB_DEPENDS=	x11/gtk+2
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--with-gtk2

.include <bsd.port.mk>
