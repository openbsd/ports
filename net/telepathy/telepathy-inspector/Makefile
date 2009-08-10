# $OpenBSD: Makefile,v 1.8 2009/08/10 06:33:43 kili Exp $

COMMENT=	display information about a given connection manager

DISTNAME=	telepathy-inspector-0.5.3
PKGNAME=	${DISTNAME}p2

HOMEPAGE=	http://telepathy.freedesktop.org/wiki/TelepathyInspector

MASTER_SITES=	${MASTER_SITES_TELEPATHY:=telepathy-inspector/}

MODULES=	devel/gettext \
		lang/python

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 dbus-glib-1 \
		expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
		png pthread pthread-stubs xcb xml2 z

BUILD_DEPENDS=		::textproc/libxslt
LIB_DEPENDS=		glade-2.0::devel/libglade2 \
			telepathy-glib::net/telepathy/telepathy-glib

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

.include <bsd.port.mk>
