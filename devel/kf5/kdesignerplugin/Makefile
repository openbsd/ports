# $OpenBSD: Makefile,v 1.5 2017/07/30 15:53:58 espie Exp $

COMMENT =		integrating KDE 5 widgets with Qt Designer
DISTNAME =		kdesignerplugin-${VERSION}
REVISION =		1

WANTLIB =  KF5Auth KF5Bookmarks KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5I18n
WANTLIB += KF5IconThemes KF5ItemViews KF5JobWidgets KF5KIOCore
WANTLIB += KF5KIOFileWidgets KF5KIOWidgets KF5Plotting KF5Service
WANTLIB += KF5Solid KF5SonnetCore KF5SonnetUi KF5TextWidgets KF5WebKit
WANTLIB += KF5WidgetsAddons KF5XmlGui ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5WebKit Qt5WebKitWidgets Qt5Widgets Qt5Xml c m

BUILD_DEPENDS =	devel/gettext-tools \
		devel/kf5/kdoctools

RUN_DEPENDS =	devel/kf5/kdoctools \
		x11/qt5/qttools

LIB_DEPENDS =	devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kdewebkit \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kitemviews \
		devel/kf5/kplotting \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		devel/kf5/sonnet \
		x11/qt5/qtwebkit

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
