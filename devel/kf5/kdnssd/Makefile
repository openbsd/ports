COMMENT =		network service discovery using Zeroconf for KDE
DISTNAME =		kdnssd-${VERSION}

SHARED_LIBS =		KF5DNSSD	6.0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Network m

BUILD_DEPENDS =	net/avahi,-libs
RUN_DEPENDS =	net/avahi

.include <bsd.port.mk>
