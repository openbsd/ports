# $OpenBSD: Makefile,v 1.19 2019/07/12 20:51:22 sthen Exp $

COMMENT=	showcase for GTK+ 2 widgets

DISTNAME=	thewidgetfactory-0.2.1
REVISION=	11
CATEGORIES=	x11

HOMEPAGE=	http://www.stellingwerff.com/?page_id=10

# GPL v2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 c cairo expat ffi fontconfig freetype fribidi
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz iconv
WANTLIB += intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread xcb xcb-render xcb-shm z

MASTER_SITES=	http://www.stellingwerff.com/TheWidgetFactory/

LIB_DEPENDS=	devel/gettext,-runtime \
		x11/gtk+2

CONFIGURE_STYLE=gnu

NO_TEST=	Yes

.include <bsd.port.mk>
