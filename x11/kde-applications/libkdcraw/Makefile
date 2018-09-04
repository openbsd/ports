# $OpenBSD $

COMMENT =	KDE wrapper around the LibRaw library
DISTNAME =	libkdcraw-${VERSION}
PKGNAME =	libkdcraw-kf5-${VERSION}
CATEGORIES =	devel graphics

KDE5 =		Yes

SHARED_LIBS +=  KF5KDcraw                 0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui m raw

LIB_DEPENDS =	graphics/libraw

NO_TEST =	Yes

.include <bsd.port.mk>
