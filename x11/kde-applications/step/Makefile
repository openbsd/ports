# $OpenBSD: Makefile,v 1.15 2021/11/10 06:37:58 rsadowski Exp $

COMMENT =	KDE interactive physics simulator
DISTNAME =	step-${VERSION}
CATEGORIES =	education math

HOMEPAGE =	https://www.kde.org/applications/education/step

WANTLIB += ${COMPILER_LIBCXX} KF5Attica KF5Auth KF5AuthCore KF5Codecs
WANTLIB += KF5Completion KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5Crash KF5I18n KF5IconThemes KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOGui KF5KIOWidgets KF5NewStuff KF5NewStuffCore
WANTLIB += KF5Plotting KF5Service KF5Solid KF5SonnetUi KF5TextWidgets
WANTLIB += KF5WidgetsAddons KF5WindowSystem KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5OpenGL Qt5Widgets
WANTLIB += Qt5Xml X11 c gsl gslcblas m qalculate

MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DESKTOP_FILE = yes
MODKDE5_DOCS = yes

BUILD_DEPENDS =	math/eigen3
RUN_DEPENDS =	misc/shared-mime-info

LIB_DEPENDS =	devel/gsl \
		devel/kf5/attica \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kcrash \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/knewstuff \
		devel/kf5/kplotting \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kxmlgui \
		devel/kf5/sonnet \
		math/libqalculate

.include <bsd.port.mk>
