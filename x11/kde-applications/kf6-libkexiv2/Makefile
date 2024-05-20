COMMENT =	EXIV2 Library interface for KDE

DISTNAME =	libkexiv2-${VERSION}
PKGNAME =	kf6-libkexiv2-${VERSION}

CATEGORIES =	graphics devel

SHARED_LIBS +=  KExiv2Qt6                 0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui exiv2 m

LIB_DEPENDS =	graphics/exiv2

CONFIGURE_ARGS =	-DQT_MAJOR_VERSION=6

.include <bsd.port.mk>
