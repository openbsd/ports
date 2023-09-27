COMMENT		= minimal set of libevedev functions for Wayland on OpenBSD

V		= 20230706
DISTNAME	= libevdev-openbsd-$V
CATEGORIES	= sysutils

SITES	= https://gitlab.tetaneutral.net/mherrb/libevdev-openbsd/-/archive/${V}/

SHARED_LIBS	+=  evdev 0.0 # 0.0

WRKSRC =	${WRKDIR}/libevdev-openbsd-${V}

# MIT
PERMIT_PACKAGE	= Yes

BUILD_DEPENDS	= wayland/libinput-openbsd

post-install:
	cd ${WRKSRC} && make includes DESTDIR=""

DEBUG_PACKAGES	= ${BUILD_PACKAGES}

.include <bsd.port.mk>
