# $OpenBSD: Makefile,v 1.14 2016/08/27 18:30:52 jca Exp $

COMMENT=	showcase for GTK+ 2 widgets

DISTNAME=	thewidgetfactory-0.2.1
REVISION=	7
CATEGORIES=	x11

HOMEPAGE=	http://www.stellingwerff.com/?page_id=10

MAINTAINER=	Andres Delfino <adelfino@gmail.com>

# GPL v2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo expat ffi fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0
WANTLIB += harfbuzz iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs xcb xcb-render
WANTLIB += xcb-shm z

MASTER_SITES=	http://www.stellingwerff.com/TheWidgetFactory/

LIB_DEPENDS=	devel/gettext \
		x11/gtk+2

CONFIGURE_STYLE=gnu

NO_TEST=	Yes

.include <bsd.port.mk>
