COMMENT=		library for automatic proxy configuration management

V=			0.5.0
GH_ACCOUNT=		libproxy
GH_PROJECT=		libproxy
GH_TAGNAME=		libproxy-${V}
DISTNAME=		libproxy-${V}
REVISION=		0

CATEGORIES=		net

SHARED_LIBS += proxy                     2.0 # 1

HOMEPAGE=		https://libproxy.googlecode.com/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += c curl duktape gio-2.0 glib-2.0 gobject-2.0

MODULES=		devel/meson \
			lang/python

COMPILER=		base-clang ports-gcc base-gcc

BUILD_DEPENDS=		devel/gobject-introspection \
			devel/gsettings-desktop-schemas \
			lang/vala \
			textproc/gi-docgen

LIB_DEPENDS=		devel/glib2 \
			lang/duktape \
			net/curl

RUN_DEPENDS=		devel/gsettings-desktop-schemas

# cyclic dep:
# net/libproxy -> devel/libsoup3 -> net/glib2-networking -> net/libproxy
CONFIGURE_ARGS +=	-Dtests=false

# before bsd.port.arch.mk
DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
