# $OpenBSD: Makefile,v 1.21 2020/02/10 19:21:49 jasper Exp $

COMMENT=		library to handle keyboard descriptions

DISTNAME=		libxkbcommon-0.10.0
SHARED_LIBS +=	xkbcommon            1.5      # unknown
SHARED_LIBS +=	xkbcommon-x11        1.2      # unknown
REVISION =		0
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

WANTLIB += xcb xcb-xkb

BUILD_DEPENDS =		devel/bison

CONFIGURE_ARGS +=	-Denable-docs=false \
			-Denable-wayland=false \
			-Dx-locale-root=${X11BASE}/share/X11/locale \
			-Dxkb-config-root=${X11BASE}/share/X11/xkb/

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
