PORTROACH=	limitw:1,even

COMMENT=	WPE Backend for Wayland

DISTNAME=	wpebackend-fdo-1.14.3

CATEGORIES=	www wayland

SHARED_LIBS += WPEBackend-fdo-1.0        0.0 # 1.9.5

HOMEPAGE=	https://wpewebkit.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD
PERMIT_PACKAGE = Yes

SITES=		https://wpewebkit.org/releases/
EXTRACT_SUFX=	.tar.xz

WANTLIB += c++ epoxy gio-2.0 glib-2.0 gobject-2.0 m wayland-client
WANTLIB += wayland-egl wayland-server wpe-1.0

MODULES=	devel/meson

COMPILER=	base-clang ports-gcc

LIB_DEPENDS=	devel/glib2 \
		wayland/wayland \
		www/libwpe


DEBUG_PACKAGES=	${BUILD_PACKAGES}

.include <bsd.port.mk>
