COMMENT	=	minimal seat management daemon and universal library

UNLINKED =	wayland
V =		0.8.0
DISTNAME =	seatd-$V
CATEGORIES =	sysutils

SITES =		https://git.sr.ht/~kennylevinsen/seatd/archive/
DISTFILES =     seatd-{}${V}${EXTRACT_SUFX}

SHARED_LIBS+=	seat 0.0 # 0.0

# MIT
PERMIT_PACKAGE = Yes

WANTLIB	=	c

MODULES	=	devel/meson

BUILD_DEPENDS =	textproc/scdoc

CONFIGURE_ARGS = -Dlibseat-logind=disabled -Dlibseat-builtin=enabled

DEBUG_PACKAGES = ${BUILD_PACKAGES}

.include <bsd.port.mk>
