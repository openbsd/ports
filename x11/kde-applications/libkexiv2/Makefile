# $OpenBSD: Makefile,v 1.3 2018/12/18 09:39:21 rsadowski Exp $

COMMENT =	EXIV2 Library interface for KDE
DISTNAME =	libkexiv2-${VERSION}
PKGNAME =	libkexiv2-kf5-${VERSION}
CATEGORIES =	graphics devel

KDE5 =		Yes

SHARED_LIBS +=  KF5KExiv2                 0.0 # 5.0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui exiv2 m

MODULES +=	x11/kde-applications

LIB_DEPENDS +=	graphics/exiv2

.include <bsd.port.mk>
