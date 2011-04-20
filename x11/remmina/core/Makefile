# $OpenBSD: Makefile,v 1.1 2011/04/20 15:18:45 jasper Exp $

COMMENT=		GTK+2 remote desktop client

DISTNAME=		remmina-0.9.3

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 avahi-client
WANTLIB += avahi-common avahi-glib avahi-ui c cairo drm expat
WANTLIB += fontconfig freetype gcrypt gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gpg-error
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread pthread-stubs unique-1.0
WANTLIB += vte xcb xcb-render xcb-shm z

LIB_DEPENDS=		devel/libunique \
			devel/vte \
			net/avahi,-gtk,no_mono,no_qt3,no_qt4 \
			security/libgcrypt

RUN_DEPENDS=		devel/desktop-file-utils

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-avahi \
			--enable-vte \
			--enable-unique \
			--enable-gcrypt \
			--disable-ssh

.include <bsd.port.mk>
