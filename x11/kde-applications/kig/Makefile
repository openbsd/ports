# $OpenBSD: Makefile,v 1.5 2019/03/24 11:57:00 rsadowski Exp $

COMMENT =	KDE geometric constructions explorer
DISTNAME =	kig-${VERSION}
CATEGORIES =	education geo
REVISION =	0

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Auth KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5Crash KF5I18n KF5IconThemes KF5JobWidgets KF5KIOCore
WANTLIB += KF5KIOWidgets KF5Parts KF5Service KF5SonnetUi KF5TextEditor
WANTLIB += KF5TextWidgets KF5WidgetsAddons KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport Qt5Svg
WANTLIB += Qt5Widgets Qt5Xml Qt5XmlPatterns boost_python-mt c
WANTLIB += m ${MODPY_WANTLIB}


MODULES +=	x11/kde-applications \
		lang/python

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

LIB_DEPENDS +=	devel/boost \
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
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/kparts \
		devel/kf5/kservice \
		devel/kf5/ktexteditor \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		devel/kf5/sonnet \
		x11/qt5/qtsvg \
		x11/qt5/qtxmlpatterns

.include <bsd.port.mk>
