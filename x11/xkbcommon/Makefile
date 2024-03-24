COMMENT=		library to handle keyboard descriptions

DISTNAME=		libxkbcommon-1.7.0

SHARED_LIBS += xkbcommon                 2.1 # 0.0.0
SHARED_LIBS += xkbcommon-x11             2.1 # 0.0.0
SHARED_LIBS += xkbregistry               1.1 # 0.0.0

CATEGORIES=		x11 inputmethods

HOMEPAGE=		https://xkbcommon.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# All licenses are derivative of the MIT/X11 license, mostly identical other
# than no-endorsement clauses (e.g. paragraph 4 of The Open Group's license).
PERMIT_PACKAGE=	Yes

DEBUG_PACKAGES=		${BUILD_PACKAGES}

SITES=			${HOMEPAGE}/download/
EXTRACT_SUFX=		.tar.xz

MODULES=		devel/meson

COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

WANTLIB += c wayland-client xcb xcb-xkb xml2

BUILD_DEPENDS=		devel/bison \
			wayland/wayland-protocols

LIB_DEPENDS=		textproc/libxml \
			wayland/wayland

CONFIGURE_ARGS +=	-Denable-docs=false \
			-Dx-locale-root=${X11BASE}/share/X11/locale \
			-Dxkb-config-root=${X11BASE}/share/X11/xkb/ \
			-Denable-xkbregistry=true

TEST_DEPENDS=		devel/bison

# Fix undefined references errors
.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mlld}
CONFIGURE_ENV +=	LDFLAGS="-L${X11BASE}/lib"
.endif

.include <bsd.port.mk>
