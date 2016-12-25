# $OpenBSD: Makefile,v 1.2 2016/12/25 14:54:48 zhuk Exp $

COMMENT =		original KDE HTML rendering engine
DISTNAME =		khtml-${VERSION}

SHARED_LIBS =		KF5KHtml	1.0

WANTLIB =  ICE KF5Archive KF5Auth KF5Bookmarks KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5GlobalAccel KF5I18n KF5IconThemes KF5JS KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOWidgets KF5Notifications KF5Parts
WANTLIB += KF5Service KF5SonnetCore KF5SonnetUi KF5TextWidgets
WANTLIB += KF5Wallet KF5WidgetsAddons KF5WindowSystem KF5XmlGui
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport Qt5Widgets
WANTLIB += Qt5X11Extras Qt5Xml SM X11 Xext gif jpeg m png z
WANTLIB += phonon4qt5experimental

MODULES =		multimedia/phonon

BUILD_DEPENDS =		devel/gettext-tools

LIB_DEPENDS =		devel/kf5/karchive \
			devel/kf5/kcodecs \
			devel/kf5/kglobalaccel \
			devel/kf5/ki18n \
			devel/kf5/kiconthemes \
			devel/kf5/kio \
			devel/kf5/kjs \
			devel/kf5/knotifications \
			devel/kf5/kparts \
			devel/kf5/ktextwidgets \
			devel/kf5/kwallet \
			devel/kf5/kwidgetsaddons \
			devel/kf5/kwindowsystem \
			devel/kf5/kxmlgui \
			devel/kf5/sonnet \
			graphics/giflib \
			graphics/jpeg \
			graphics/png \
			x11/qt5/qtx11extras

IS_PORTING_AID =	Yes

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
