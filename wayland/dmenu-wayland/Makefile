COMMENT	=	dynamic menu for Wayland

DISTNAME =	dmenu-wayland-20230902
CATEGORIES =	wayland
HOMEPAGE =	https://github.com/nyyManni/wayland

GH_ACCOUNT =	nyyManni
GH_PROJECT = 	dmenu-wayland
GH_COMMIT =	a380201dff5bfac2dace553d7eaedb6cea6855f9

# MIT
PERMIT_PACKAGE = yes

MODULES =	devel/meson

WANTLIB =	cairo epoll-shim
WANTLIB +=	glib-2.0 gobject-2.0 pango-1.0 pangocairo-1.0
WANTLIB +=	wayland-client xkbcommon c

BUILD_DEPENDS =	wayland/wayland-protocols

LIB_DEPENDS =	devel/epoll-shim \
		devel/glib2 \
		devel/pango \
		graphics/cairo \
		wayland/wayland \
		x11/xkbcommon

.include <bsd.port.mk>
