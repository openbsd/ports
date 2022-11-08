COMMENT =	library to access udev device information

VERSION =	20221108
DISTNAME =	libudev-openbsd-${VERSION}

GH_ACCOUNT =	rnagy
GH_PROJECT =	libudev-openbsd
GH_COMMIT =	c3330efdf79ac131f8db753e9bfada7985f0bbe1

SHARED_LIBS +=  udev	0.0 # 0.0

CATEGORIES =	sysutils devel

# BSD
PERMIT_PACKAGE =	Yes

DEBUG_PACKAGES =	${BUILD_PACKAGES}

WANTLIB += pthread

MODULES =	devel/meson

.include <bsd.port.mk>
