# $OpenBSD: Makefile,v 1.4 2019/03/08 20:00:54 cwen Exp $

COMMENT =	EXIV2 Library interface for KDE
DISTNAME =	libkexiv2-${VERSION}
PKGNAME =	libkexiv2-kf5-${VERSION}
CATEGORIES =	graphics devel
REVISION =	0

KDE5 =		Yes

SHARED_LIBS +=  KF5KExiv2                 0.0 # 5.0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui exiv2 m

MODULES +=	x11/kde-applications

LIB_DEPENDS +=	graphics/exiv2

.include <bsd.port.mk>
