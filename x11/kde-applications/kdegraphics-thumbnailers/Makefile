# $OpenBSD: Makefile,v 1.4 2020/06/14 12:50:55 rsadowski Exp $

COMMENT =	thumbnailers for various graphics file formats
DISTNAME =	kdegraphics-thumbnailers-${VERSION}
PKGNAME =	kdegraphics-thumbnailers-kf5-${VERSION}
CATEGORIES =	devel graphics
REVISION =	0

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Completion KF5ConfigCore
WANTLIB += KF5CoreAddons KF5JobWidgets KF5KDcraw KF5KExiv2 KF5KIOCore
WANTLIB += KF5KIOWidgets KF5Service KF5WidgetsAddons Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets m

MODULES +=	x11/kde-applications

LIB_DEPENDS =	devel/kf5/karchive \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		x11/kde-applications/libkdcraw \
		x11/kde-applications/libkexiv2

.include <bsd.port.mk>
