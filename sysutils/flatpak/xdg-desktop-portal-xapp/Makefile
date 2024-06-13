COMMENT=		MATE/Xfce4 backend implementation for xdg-desktop-portal

DIST_TUPLE=		github linuxmint xdg-desktop-portal-xapp 1.0.6 .

CATEGORIES=		x11

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += c gio-2.0 glib-2.0 gobject-2.0 gtk-3 intl

MODULES=		devel/meson

BUILD_DEPENDS=		sysutils/flatpak/xdg-desktop-portal

LIB_DEPENDS=		x11/gtk+3

RUN_DEPENDS=		devel/desktop-file-utils \
			sysutils/flatpak/xdg-desktop-portal

# XXX if we don't specify it, we actually need systemd to get systemduserunitdir
# from pkg-config(1)
CONFIGURE_ARGS +=	-Dsystemduserunitdir=${PREFIX}/lib/systemd/user

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
