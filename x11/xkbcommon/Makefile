COMMENT=		library to handle keyboard descriptions

DISTNAME=		libxkbcommon-1.3.1
SHARED_LIBS +=	xkbcommon            1.6      # unknown
SHARED_LIBS +=	xkbcommon-x11        1.2      # unknown
SHARED_LIBS +=	xkbregistry          0.0      # unknown
CATEGORIES=		x11 inputmethods

HOMEPAGE=		https://xkbcommon.org/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# All licenses are derivative of the MIT/X11 license, mostly identical other
# than no-endorsement clauses (e.g. paragraph 4 of The Open Group's license).
PERMIT_PACKAGE=	Yes

DEBUG_PACKAGES =	${BUILD_PACKAGES}

MASTER_SITES=		${HOMEPAGE}/download/
EXTRACT_SUFX=		.tar.xz

MODULES =		devel/meson

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

WANTLIB += c xcb xcb-xkb xml2

BUILD_DEPENDS =		devel/bison
LIB_DEPENDS =		textproc/libxml

CONFIGURE_ARGS +=	-Denable-docs=false \
			-Denable-wayland=false \
			-Dx-locale-root=${X11BASE}/share/X11/locale \
			-Dxkb-config-root=${X11BASE}/share/X11/xkb/ \
			-Denable-xkbregistry=true

TEST_DEPENDS =		devel/bison \
			shells/bash
TEST_IS_INTERACTIVE=	x11

# Fix undefined references errors
.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mlld}
CONFIGURE_ENV +=	LDFLAGS="-L${X11BASE}/lib"
.endif

# XXX: This test still fails
pre-test:
	sed -i 's,bin/bash,${LOCALBASE}/bin/bash,' ${WRKSRC}/test/symbols-leak-test.bash

.include <bsd.port.mk>
