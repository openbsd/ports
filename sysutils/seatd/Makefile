COMMENT		= minimal seat management daemon and universal library

V		= 20230706
PKGNAME		= seatd-$V
CATEGORIES	= sysutils

MASTER_SITES	= https://gitlab.tetaneutral.net/mherrb/seatd/-/archive/obsd/

DISTFILES	= seatd-obsd${EXTRACT_SUFX}

SHARED_LIBS	+=  seat 0.0 # 0.0

WRKSRC		= ${WRKDIR}/seatd-obsd

# MIT
PERMIT_PACKAGE	= Yes

WANTLIB		= c

MODULES		= devel/meson

BUILD_DEPENDS	= textproc/scdoc

CONFIGURE_ARGS	= -Dlibseat-logind=disabled -Dlibseat-builtin=enabled

DEBUG_PACKAGES	= ${BUILD_PACKAGES}

.include <bsd.port.mk>
