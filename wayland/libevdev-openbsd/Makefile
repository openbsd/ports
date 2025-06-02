# XXX
# libevdev-openbsd only a place holder for a few utility functions
# needed by Wayland and found in libevdev on Linux.
# The detection of libevedev has been deactivated in the following ports
# to avoid them to expect full libevdev functionnality
# wayland/libei

COMMENT		= minimal set of libevedev functions for Wayland on OpenBSD

V		= 20231111
REVISION	= 0
DISTNAME	= libevdev-openbsd-$V
CATEGORIES	= wayland

SITES	= https://code.tetaneutral.net/mherrb/libevdev-openbsd/archive/
DISTFILES =     ${DISTNAME}-1{${DISTNAME}}.tar.gz

SHARED_LIBS	+=  evdev 0.0 # 0.0

WRKDIST =       ${WRKDIR}/libevdev-openbsd

# MIT
PERMIT_PACKAGE	= Yes

BUILD_DEPENDS	= wayland/libinput-openbsd

post-install:
	cd ${WRKSRC} && make includes DESTDIR=""

DEBUG_PACKAGES	= ${BUILD_PACKAGES}

.include <bsd.port.mk>
