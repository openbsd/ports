# $OpenBSD: Makefile,v 1.1.1.1 2011/04/20 15:07:36 jasper Exp $

COMMENT-main=		GTK+2 remote desktop client, VNC and XDMCP plugins
COMMENT-rdp=		GTK+2 remote desktop client, RDP plugin
COMMENT-telepathy=	GTK+2 remote desktop client, Telepathy plugin


V=			0.9.2
DISTNAME=		remmina-plugins-$V

PKGNAME-main=		remmina-plugins-$V
PKGNAME-rdp=		remmina-plugins-rdp-$V
PKGNAME-telepathy=	remmina-plugins-telepathy-$V

MULTI_PACKAGES= 	-main -rdp -telepathy

USE_LIBTOOL=		Yes
LIBTOOL_FLAGS=		--tag=disable-static

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		x11/remmina/core

WANTLIB= 		GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
			Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 \
			cairo drm expat fontconfig freetype gdk-x11-2.0 \
			gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 \
			gobject-2.0 gthread-2.0 gtk-x11-2.0 jpeg m pango-1.0 \
			pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png \
			pthread-stubs xcb xcb-render xcb-shm z
LIB_DEPENDS=		x11/gtk+2

WANTLIB-main=		${WANTLIB} gmp hogweed nettle gnutls tasn1
WANTLIB-rdp=		${WANTLIB} crypto freerdp freerdpchanman freerdpkbd ssl
WANTLIB-telepathy=	${WANTLIB} dbus-1 dbus-glib-1 telepathy-glib

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			security/gnutls
LIB_DEPENDS-rdp=	${LIB_DEPENDS} \
			x11/freerdp
LIB_DEPENDS-telepathy=	${LIB_DEPENDS} \
			net/telepathy/telepathy-glib

CONFIGURE_ARGS+=	--disable-ssh \
			--disable-nx \
			--enable-rdp \
			--enable-vnc \
			--enable-xdmcp \
			--enable-telepathy

.include <bsd.port.mk>
