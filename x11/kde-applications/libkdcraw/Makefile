COMMENT =	KDE wrapper around the LibRaw library

DISTNAME =	libkdcraw-${VERSION}
PKGNAME =	libkdcraw-kf5-${VERSION}

CATEGORIES =	devel graphics

MODKDE_KF5 =	Yes

SHARED_LIBS +=  KF5KDcraw                 2.1 # 0.0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui m raw

LIB_DEPENDS =	graphics/libraw

CONFIGURE_ARGS =	-DQT_MAJOR_VERSION=5

.include <bsd.port.mk>
