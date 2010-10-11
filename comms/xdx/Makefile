# $OpenBSD: Makefile,v 1.15 2010/10/11 08:11:50 jasper Exp $

COMMENT=	X DX cluster watcher

VERSION=	2.4
DISTNAME=	xdx-${VERSION}
REVISION=	6

CATEGORIES=    	comms hamradio

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread-stubs xcb z gthread-2.0 pthread xcb-render
WANTLIB += xcb-render-util gtk-x11-2.0 gdk-x11-2.0 gdk_pixbuf-2.0

MASTER_SITES=	http://distfiles.nl/

CONFIGURE_STYLE=gnu

MODULES=	devel/gettext

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=	::x11/gtk+2

USE_X11=	Yes

.include <bsd.port.mk>
