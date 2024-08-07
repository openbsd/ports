PORTROACH=		skipv:master.lmde6,master.mint22

COMMENT=		MATE/Xfce4 backend implementation for xdg-desktop-portal

DIST_TUPLE=		github linuxmint xdg-desktop-portal-xapp 1.0.9 .

CATEGORIES=		x11

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += c gio-2.0 glib-2.0 gobject-2.0 intl

MODULES=		devel/meson

BUILD_DEPENDS=		sysutils/flatpak/xdg-desktop-portal \
			x11/gtk+3

LIB_DEPENDS=		devel/glib2

RUN_DEPENDS=		devel/desktop-file-utils \
			sysutils/flatpak/xdg-desktop-portal

# XXX if we don't specify it, we actually need systemd to get systemduserunitdir
# from pkg-config(1)
CONFIGURE_ARGS +=	-Dsystemduserunitdir=${PREFIX}/lib/systemd/user

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
