# $OpenBSD: Makefile,v 1.80 2020/05/14 15:14:30 jasper Exp $

COMMENT=		contacts manager for GNOME

GNOME_PROJECT=		gnome-contacts
GNOME_VERSION=		3.36.1

CATEGORIES=		productivity

# GPLv2+
PERMIT_PACKAGE= 	Yes

WANTLIB += ${COMPILER_LIBCXX}

WANTLIB += atk-1.0 c cairo edataserver-1.2 edataserverui-1.2 folks
WANTLIB += folks-eds gdk-3 gdk_pixbuf-2.0 gee-0.8 gio-2.0 glib-2.0
WANTLIB += gnome-desktop-3 goa-1.0 gobject-2.0 gtk-3 handy-0.0
WANTLIB += intl m pango-1.0 pangocairo-1.0

COMPILER =		base-clang ports-gcc base-gcc

MODULES=		devel/meson \
			x11/gnome \
			devel/dconf

DEBUG_PACKAGES =	${BUILD_PACKAGES}

LIB_DEPENDS=		net/telepathy/folks \
			x11/gnome/desktop \
			x11/libhandy

MODGNOME_TOOLS=		desktop-file-utils docbook \
			gobject-introspection gtk-update-icon-cache vala

CONFIGURE_ARGS +=	-Dcheese=false \
			-Dtelepathy=false

.include <bsd.port.mk>
