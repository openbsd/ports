# $OpenBSD: Makefile,v 1.12 2019/05/20 22:15:05 naddy Exp $

COMMENT =		original KDE HTML rendering engine
DISTNAME =		khtml-${VERSION}

SHARED_LIBS =		KF5KHtml	4.2

WANTLIB += ${COMPILER_LIBCXX} ICE KF5Archive KF5Auth KF5Bookmarks
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5GlobalAccel KF5I18n
WANTLIB += KF5IconThemes KF5JS KF5JobWidgets KF5KIOCore KF5KIOWidgets
WANTLIB += KF5Notifications KF5Parts KF5Service KF5SonnetCore
WANTLIB += KF5SonnetUi KF5TextWidgets KF5Wallet KF5WidgetsAddons
WANTLIB += KF5WindowSystem KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5PrintSupport Qt5Widgets Qt5X11Extras
WANTLIB += Qt5Xml SM X11 Xext gif jpeg m phonon4qt5experimental
WANTLIB += png z

MODULES =		multimedia/phonon

BUILD_DEPENDS =		devel/gettext,-tools

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

#The following tests FAILED:
#1 - khtml-parttest (Child aborted)
TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
