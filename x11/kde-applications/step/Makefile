# $OpenBSD: Makefile,v 1.5 2020/03/23 18:01:29 rsadowski Exp $

COMMENT =	KDE interactive physics simulator
DISTNAME =	step-${VERSION}
CATEGORIES =	education math

HOMEPAGE =	https://www.kde.org/applications/education/step

WANTLIB += ${COMPILER_LIBCXX} KF5Attica KF5Auth KF5AuthCore KF5Codecs
WANTLIB += KF5Completion KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5Crash KF5I18n KF5IconThemes KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOWidgets KF5NewStuff KF5NewStuffCore
WANTLIB += KF5Plotting KF5Service KF5SonnetUi KF5TextWidgets KF5WidgetsAddons
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5OpenGL Qt5Widgets Qt5Xml c cln gsl gslcblas m qalculate

MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
ODKDE5_DOCS = yes

MODULES +=	x11/kde-applications

BUILD_DEPENDS =	math/eigen3

LIB_DEPENDS =	devel/gsl \
		devel/kf5/attica \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kcrash \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/khtml \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/kjs \
		devel/kf5/knewstuff \
		devel/kf5/kplotting \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kxmlgui \
		devel/kf5/sonnet \
		math/libqalculate

.include <bsd.port.mk>
