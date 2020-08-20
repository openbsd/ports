# $OpenBSD: Makefile,v 1.14 2020/08/20 18:00:13 rsadowski Exp $

COMMENT =		original KDE HTML rendering engine
DISTNAME =		khtml-${VERSION}
REVISION =		0

SHARED_LIBS =		KF5KHtml	5.0

WANTLIB += ${COMPILER_LIBCXX} ICE KF5Archive KF5Auth KF5AuthCore
WANTLIB += KF5Bookmarks KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5GlobalAccel
WANTLIB += KF5I18n KF5IconThemes KF5JS KF5JobWidgets KF5KIOCore
WANTLIB += KF5KIOWidgets KF5Notifications KF5Parts KF5Service
WANTLIB += KF5SonnetCore KF5SonnetUi KF5TextWidgets KF5Wallet
WANTLIB += KF5WidgetsAddons KF5WindowSystem KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport Qt5Widgets
WANTLIB += Qt5X11Extras Qt5Xml SM X11 Xext gif jpeg m phonon4qt5
WANTLIB += phonon4qt5experimental png z

BUILD_DEPENDS =		devel/gettext,-tools

LIB_DEPENDS =		devel/kf5/karchive>=${MODKF5_VERSION} \
			devel/kf5/kcodecs>=${MODKF5_VERSION} \
			devel/kf5/kglobalaccel>=${MODKF5_VERSION} \
			devel/kf5/ki18n>=${MODKF5_VERSION} \
			devel/kf5/kiconthemes>=${MODKF5_VERSION} \
			devel/kf5/kio>=${MODKF5_VERSION} \
			devel/kf5/kjs>=${MODKF5_VERSION} \
			devel/kf5/knotifications>=${MODKF5_VERSION} \
			devel/kf5/kparts>=${MODKF5_VERSION} \
			devel/kf5/ktextwidgets>=${MODKF5_VERSION} \
			devel/kf5/kwallet>=${MODKF5_VERSION} \
			devel/kf5/kwidgetsaddons>=${MODKF5_VERSION} \
			devel/kf5/kwindowsystem>=${MODKF5_VERSION} \
			devel/kf5/kxmlgui>=${MODKF5_VERSION} \
			devel/kf5/sonnet>=${MODKF5_VERSION} \
			graphics/giflib \
			graphics/jpeg \
			graphics/png \
			x11/qt5/qtx11extras \
			multimedia/phonon

IS_PORTING_AID =	Yes

#The following tests FAILED:
#1 - khtml-parttest (Child aborted)
TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
