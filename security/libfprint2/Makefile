COMMENT=		library for fingerprint reader devices

V=			1.94.100
DISTNAME=		libfprint-v${V}
PKGNAME=		libfprint2-${V}

CATEGORIES=    		security

SHARED_LIBS += fprint-2                  0.0 # 2.0.0

HOMEPAGE=		https://fprint.freedesktop.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

SITES=			https://gitlab.freedesktop.org/libfprint/libfprint/-/archive/v${V}/

WANTLIB += crypto gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gusb
WANTLIB += m pixman-1

MODULES=		devel/meson

BUILD_DEPENDS=		devel/gobject-introspection

LIB_DEPENDS=		devel/glib2 \
			devel/libgusb

CONFIGURE_ARGS=		-Ddoc=false \
			-Dudev_rules=disabled \
			-Dudev_hwdb=disabled \
			-Dinstalled-tests=false

.include <bsd.port.mk>
