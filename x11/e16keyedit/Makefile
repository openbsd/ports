COMMENT=	edit enlightenment's keybindings

DISTNAME=	e16-keyedit-0.9
PKGNAME=	${DISTNAME:S/-//}
CATEGORIES=    	x11
REVISION=	0

# X11
PERMIT_PACKAGE=	Yes

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 c cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += harfbuzz intl pango-1.0 pangocairo-1.0 pangoft2-1.0 z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=enlightenment/}

LIB_DEPENDS=	x11/gtk+2
RUN_DEPENDS=	enlightenment->=1.0.7:x11/enlightenment

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
