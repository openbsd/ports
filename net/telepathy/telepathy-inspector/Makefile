# $OpenBSD: Makefile,v 1.27 2012/04/04 14:41:34 jasper Exp $

COMMENT=	display information about a given connection manager

DISTNAME=	telepathy-inspector-0.5.3
REVISION=	10

HOMEPAGE=	${HOMEPAGE_TP:=Telepathy Inspector}

MASTER_SITES=	${MASTER_SITES_TP:=telepathy-inspector/}

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 dbus-glib-1
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs xcb xcb-render
WANTLIB += xcb-render-util xml2 z glade-2.0 telepathy-glib

MODULES=	devel/gettext \
		lang/python
MODPY_RUNDEP=	No

BUILD_DEPENDS=		textproc/libxslt
LIB_DEPENDS=		devel/libglade2 \
			net/telepathy/telepathy-glib

CONFIGURE_STYLE=	gnu
USE_LIBTOOL=		No

.include <bsd.port.mk>
