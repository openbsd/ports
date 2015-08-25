# $OpenBSD: Makefile,v 1.13 2015/08/25 14:03:21 sthen Exp $

COMMENT=	showcase for GTK+ 2 widgets

DISTNAME=	thewidgetfactory-0.2.1
REVISION=	6
CATEGORIES=	x11

HOMEPAGE=	http://www.stellingwerff.com/?page_id=10

MAINTAINER=	Andres Delfino <adelfino@gmail.com>

# GPL v2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread-stubs
WANTLIB += xcb xcb-shm z
WANTLIB += ffi graphite2 gthread-2.0 harfbuzz pthread xcb-render

MASTER_SITES=	http://www.stellingwerff.com/TheWidgetFactory/

LIB_DEPENDS=	x11/gtk+2

CONFIGURE_STYLE=gnu

MODULES+=	devel/gettext

NO_TEST=	Yes

.include <bsd.port.mk>
