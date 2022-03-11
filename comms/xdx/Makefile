COMMENT=	X DX cluster watcher

VERSION=	2.4
DISTNAME=	xdx-${VERSION}
REVISION=	12

CATEGORIES=    	comms hamradio

PERMIT_PACKAGE=	Yes

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-x11-2.0 harfbuzz intl pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 z

MASTER_SITES=	https://distfiles.sigtrap.nl/

CONFIGURE_STYLE=gnu

RUN_DEPENDS=	devel/desktop-file-utils
LIB_DEPENDS=	x11/gtk+2


.include <bsd.port.mk>
