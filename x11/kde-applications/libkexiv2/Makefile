COMMENT =	EXIV2 Library interface for KDE

DISTNAME =	libkexiv2-${VERSION}
PKGNAME =	libkexiv2-kf5-${VERSION}

CATEGORIES =	graphics devel

MODKDE_KF5 =	Yes

SHARED_LIBS +=  KF5KExiv2                 3.0 # 5.0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui exiv2 m

LIB_DEPENDS =	graphics/exiv2

.include <bsd.port.mk>
