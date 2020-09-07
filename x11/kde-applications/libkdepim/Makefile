# $OpenBSD: Makefile,v 1.3 2020/09/07 14:49:26 rsadowski Exp $

COMMENT =	library for common kdepim apps
DISTNAME =	libkdepim-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  KF5Libkdepim               2.0 # 5.6

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5I18n KF5JobWidgets KF5KCMUtils KF5KIOCore KF5KIOGui
WANTLIB += KF5KIOWidgets KF5Service KF5WidgetsAddons KF5WindowSystem
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets
WANTLIB += Qt5Xml m

MODKDE5_TRANSLATIONS = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

MODULES +=	x11/kde-applications

BUILD_DEPENDS =	devel/boost \
		devel/kf5/solid



LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcmutils \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/kwindowsystem \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
