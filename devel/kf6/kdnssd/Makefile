UNLINKED = kf6
COMMENT =	network service discovery using Zeroconf for KDE
DISTNAME =	kdnssd-${VERSION}

SHARED_LIBS +=  KF6DNSSD                  0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} Qt6Core Qt6DBus Qt6Network m

BUILD_DEPENDS =	net/avahi,-libs
RUN_DEPENDS =	net/avahi

.include <bsd.port.mk>
