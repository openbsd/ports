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

VERSION =	20260920
DISTNAME =	libudev-openbsd-${VERSION}

GH_ACCOUNT =	rnagy
GH_PROJECT =	libudev-openbsd
GH_COMMIT =	b52ecedf0eb07b2af1fe599c114ed121bed4b092

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
