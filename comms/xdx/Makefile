# $OpenBSD: Makefile,v 1.22 2013/10/11 23:48:12 naddy Exp $

COMMENT=	X DX cluster watcher

VERSION=	2.4
DISTNAME=	xdx-${VERSION}
REVISION=	8

CATEGORIES=    	comms hamradio

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread pthread-stubs xcb
WANTLIB += xcb-render xcb-shm z

MASTER_SITES=	http://distfiles.nl/

CONFIGURE_STYLE=gnu

MODULES=	devel/gettext

RUN_DEPENDS=	devel/desktop-file-utils
LIB_DEPENDS=	x11/gtk+2


.include <bsd.port.mk>
