COMMENT=		filtering proxy for D-Bus connections

V=			0.1.6
DISTNAME=		xdg-dbus-proxy-${V}

CATEGORIES=		x11

HOMEPAGE=		https://github.com/flatpak/xdg-dbus-proxy

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += c gio-2.0 glib-2.0 gobject-2.0

SITES=			https://github.com/flatpak/xdg-dbus-proxy/releases/download/${V}/
EXTRACT_SUFX=		.tar.xz

MODULES=		devel/meson

# xsltproc(1) for man pages
BUILD_DEPENDS +=	textproc/libxslt \
			textproc/docbook-xsl

LIB_DEPENDS=		devel/glib2

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
