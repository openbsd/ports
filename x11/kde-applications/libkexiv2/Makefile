# $OpenBSD: Makefile,v 1.1.1.1 2018/07/28 18:50:56 rsadowski Exp $

COMMENT =	EXIV2 Library interface for KDE
DISTNAME =	libkexiv2-${VERSION}
PKGNAME =	libkexiv2-kf5-${VERSION}
CATEGORIES =	graphics devel

KDE5 =		Yes

SHARED_LIBS +=  KF5KExiv2                 0.0 # 5.0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui exiv2 m

LIB_DEPENDS =	graphics/exiv2

NO_TEST =	Yes

.include <bsd.port.mk>
