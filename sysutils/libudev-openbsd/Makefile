# XXX
# The libudev detection has been deactivated in the following ports:
# x11/tigervnc
# devel/openmpi
# sysutils/consolekit
# games/chiaki
# games/flightgear
# multimedia/libv4l
# multimedia/dvdstyler

COMMENT =	library to access udev device information

VERSION =	20230921
DISTNAME =	libudev-openbsd-${VERSION}
REVISION = 	0

GH_ACCOUNT =	rnagy
GH_PROJECT =	libudev-openbsd
GH_COMMIT =	6016506a43e0c49f6c504d25a42fd53c0df1c766

SHARED_LIBS += udev                      0.0 # 0.0.0

CATEGORIES =	sysutils devel

# BSD
PERMIT_PACKAGE =	Yes

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# uses -std=c11
COMPILER =	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB += pthread

MODULES =	devel/meson

.include <bsd.port.mk>
