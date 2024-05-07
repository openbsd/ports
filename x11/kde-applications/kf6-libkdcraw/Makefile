UNLINKED =	kf6
COMMENT =	KDE wrapper around the LibRaw library

DISTNAME =	libkdcraw-${VERSION}
PKGNAME =	kf6-libkdcraw-${VERSION}

CATEGORIES =	devel graphics

SHARED_LIBS +=	KDcrawQt6                 0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui m raw

LIB_DEPENDS =	graphics/libraw

CONFIGURE_ARGS =	-DQT_MAJOR_VERSION=6

.include <bsd.port.mk>
