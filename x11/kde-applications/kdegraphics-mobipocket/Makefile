# $OpenBSD: Makefile,v 1.9 2020/11/03 16:12:34 rsadowski Exp $

COMMENT =	collection of plugins to handle mobipocket files
DISTNAME =	kdegraphics-mobipocket-${VERSION}
PKGNAME =	kdegraphics-mobipocket-kf5-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  qmobipocket               1.0 # 2.0

WANTLIB += ${COMPILER_LIBCXX} KF5Completion KF5ConfigCore KF5CoreAddons
WANTLIB += KF5JobWidgets KF5KIOCore KF5KIOGui KF5KIOWidgets KF5Service
WANTLIB += KF5WidgetsAddons KF5WindowSystem Qt5Concurrent Qt5Core
WANTLIB += Qt5DBus Qt5Gui Qt5Network Qt5Widgets m

LIB_DEPENDS =	devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kjobwidgets \
		devel/kf5/kio \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons

NO_TEST =	Yes

.include <bsd.port.mk>
