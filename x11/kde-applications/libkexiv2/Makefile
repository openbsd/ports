# $OpenBSD: Makefile,v 1.6 2020/03/23 18:01:27 rsadowski Exp $

COMMENT =	EXIV2 Library interface for KDE
DISTNAME =	libkexiv2-${VERSION}
PKGNAME =	libkexiv2-kf5-${VERSION}
CATEGORIES =	graphics devel

SHARED_LIBS +=  KF5KExiv2                 1.0 # 5.0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui exiv2 m

MODULES +=	x11/kde-applications

LIB_DEPENDS =	graphics/exiv2

.include <bsd.port.mk>
