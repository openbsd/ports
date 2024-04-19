UNLINKED = kf6
COMMENT =	KDE hardware abstraction layer
DISTNAME =	solid-${VERSION}

SHARED_LIBS +=  KF6Solid                  0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6DBus Qt6Gui Qt6Xml
WANTLIB += c m

BUILD_DEPENDS =	devel/bison \
		devel/libplist

RUN_DEPENDS =	sysutils/openbsdisks2

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
