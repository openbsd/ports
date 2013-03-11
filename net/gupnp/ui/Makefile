# $OpenBSD: Makefile,v 1.6 2013/03/11 11:35:47 espie Exp $

COMMENT=		collection of GTK+ widgets on top of GUPnp

GNOME_PROJECT=		gupnp-ui
GNOME_VERSION=		0.1.1
REVISION=		0

SHARED_LIBS +=  gupnp-ui-1.0         0.0      # 0.0

EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo drm
WANTLIB += e2fs-uuid expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gssdp-1.0
WANTLIB += gthread-2.0 gtk-x11-2.0 gupnp-1.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread-stubs soup-2.4
WANTLIB += xcb xcb-render xcb-shm xml2 z

LIB_DEPENDS=		net/gupnp/core

TEST_IS_INTERACTIVE=x11

do-test:
	${WRKSRC}/tests/test-view

.include <bsd.port.mk>
