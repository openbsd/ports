COMMENT=		GTK backend implementation for xdg-desktop-portal

V=			1.15.1
DISTNAME=		xdg-desktop-portal-gtk-${V}
REVISION=		1

CATEGORIES=		x11

HOMEPAGE=		https://github.com/flatpak/xdg-desktop-portal-gtk

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += c cairo fontconfig gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gnome-desktop-3 gobject-2.0 gtk-3 intl

SITES=			https://github.com/flatpak/xdg-desktop-portal-gtk/releases/download/${V}/
EXTRACT_SUFX=		.tar.xz

MODULES=		devel/meson

BUILD_DEPENDS=		devel/gettext,-tools \
			sysutils/flatpak/xdg-desktop-portal

LIB_DEPENDS=		x11/gnome/desktop

RUN_DEPENDS=		devel/desktop-file-utils \
			sysutils/flatpak/xdg-desktop-portal

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
