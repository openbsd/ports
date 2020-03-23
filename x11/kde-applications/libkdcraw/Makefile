# $OpenBSD $

COMMENT =	KDE wrapper around the LibRaw library
DISTNAME =	libkdcraw-${VERSION}
PKGNAME =	libkdcraw-kf5-${VERSION}
CATEGORIES =	devel graphics

SHARED_LIBS +=  KF5KDcraw                 1.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui m raw

MODULES +=	x11/kde-applications

LIB_DEPENDS =	graphics/libraw

.include <bsd.port.mk>
