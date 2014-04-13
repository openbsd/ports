# $OpenBSD: Makefile,v 1.18 2014/04/13 01:01:39 naddy Exp $

COMMENT=	X11 counterpart of curses-based misc/dialog

DISTNAME=	Xdialog-2.3.1
REVISION=	5
CATEGORIES=	x11 misc

HOMEPAGE=	http://xdialog.free.fr/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread
WANTLIB += pthread-stubs xcb z gdk_pixbuf-2.0 gdk-x11-2.0 gtk-x11-2.0
WANTLIB += xcb-render xcb-shm

MASTER_SITES=	http://xdialog.free.fr/
EXTRACT_SUFX=	.tar.bz2

LIB_DEPENDS=	x11/gtk+2
MODULES=	devel/gettext

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--with-gtk2

.include <bsd.port.mk>
