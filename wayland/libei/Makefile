COMMENT=	library for Emulated Input

V=		1.3.0
DISTNAME=	libei-${V}

SHARED_LIBS += ei                        0.0 # 1.3.0
SHARED_LIBS += eis                       0.0 # 1.3.0

CATEGORIES=	wayland devel

HOMEPAGE=	https://libinput.pages.freedesktop.org/libei/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB += c epoll-shim

SITES=		https://gitlab.freedesktop.org/libinput/libei/-/archive/${V}/

MODULES=	devel/meson \
		lang/python

MODPY_RUNDEP=	No

BUILD_DEPENDS=	devel/py-attrs${MODPY_FLAVOR} \
		www/py-jinja2${MODPY_FLAVOR}

# needed for tools/
BUILD_DEPENDS +=	wayland/libinput-openbsd \
			x11/xkbcommon

LIB_DEPENDS=	devel/epoll-shim

# needs an sd-bus provider: libsystemd, libelogind, basu
CONFIGURE_ARGS +=	-Dliboeffis=disabled

# needs munit
CONFIGURE_ARGS +=	-Dtests=disabled

.include <bsd.port.mk>
