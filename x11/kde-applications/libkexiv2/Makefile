COMMENT =	EXIV2 Library interface for KDE

DISTNAME =	libkexiv2-${VERSION}
PKGNAME =	libkexiv2-kf5-${VERSION}

CATEGORIES =	graphics devel

MODKDE_KF5 =	Yes

SHARED_LIBS +=	KExiv2Qt6                 0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui exiv2 m

LIB_DEPENDS =	graphics/exiv2

.include <bsd.port.mk>
