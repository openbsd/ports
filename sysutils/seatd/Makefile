COMMENT	=	minimal seat management daemon and universal library

V =		20230813
PKGNAME =	seatd-$V
DISTNAME =	seatd-openbsd-$V
CATEGORIES =	sysutils
REVISION =	0

SITES =	https://gitlab.tetaneutral.net/mherrb/seatd/-/archive/openbsd-${V}/

SHARED_LIBS+=	seat 0.0 # 0.0

# MIT
PERMIT_PACKAGE = Yes

WANTLIB	=	c

MODULES	=	devel/meson

BUILD_DEPENDS =	textproc/scdoc

CONFIGURE_ARGS = -Dlibseat-logind=disabled -Dlibseat-builtin=enabled

DEBUG_PACKAGES = ${BUILD_PACKAGES}

.include <bsd.port.mk>
