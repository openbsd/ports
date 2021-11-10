# $OpenBSD: Makefile,v 1.9 2021/11/10 06:37:46 rsadowski Exp $

COMMENT =	thumbnailers for various graphics file formats
DISTNAME =	kdegraphics-thumbnailers-${VERSION}
PKGNAME =	kdegraphics-thumbnailers-kf5-${VERSION}
CATEGORIES =	devel graphics

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Completion KF5ConfigCore
WANTLIB += KF5CoreAddons KF5JobWidgets KF5KDcraw KF5KExiv2 KF5KIOCore
WANTLIB += KF5KIOGui KF5KIOWidgets KF5Service KF5Solid KF5WidgetsAddons
WANTLIB += KF5WindowSystem Qt5Concurrent Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Network Qt5Widgets X11 m

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
