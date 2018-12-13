# $OpenBSD: Makefile,v 1.2 2018/12/13 19:53:24 sthen Exp $

COMMENT =	KDE geometric constructions explorer
DISTNAME =	kig-${VERSION}
CATEGORIES =	editors geo
REVISION =	0

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Auth KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5Crash KF5I18n KF5IconThemes KF5JobWidgets KF5KIOCore
WANTLIB += KF5KIOWidgets KF5Parts KF5Service KF5SonnetUi KF5TextEditor
WANTLIB += KF5TextWidgets KF5WidgetsAddons KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport Qt5Svg
WANTLIB += Qt5Widgets Qt5Xml Qt5XmlPatterns boost_python-mt c
WANTLIB += m ${MODPY_WANTLIB}

KDE5 =		Yes

MODULES =	lang/python

BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kdoctools

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic \
		devel/kf5/kdoctools

LIB_DEPENDS =	devel/boost \
		x11/qt5/qtsvg \
		x11/qt5/qtxmlpatterns \
		devel/kf5/karchive \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kjobwidgets \
		devel/kf5/kio \
		devel/kf5/kparts \
		devel/kf5/kservice \
		devel/kf5/sonnet \
		devel/kf5/ktexteditor \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui

.include <bsd.port.mk>
