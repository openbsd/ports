# $OpenBSD: Makefile,v 1.4 2017/07/27 09:34:37 sthen Exp $

COMMENT =	utility classes for KDE control modules
DISTNAME =	kcmutils-${VERSION}
REVISION =	0

SHARED_LIBS =	KF5KCMUtils	2.0

WANTLIB += KF5Auth KF5Codecs KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5I18n KF5IconThemes KF5ItemViews KF5Package
WANTLIB += KF5QuickAddons KF5Service KF5WidgetsAddons KF5XmlGui
WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml Qt5Quick Qt5QuickWidgets
WANTLIB += Qt5Widgets Qt5Xml m

BUILD_DEPENDS =	devel/gettext-tools

LIB_DEPENDS =	devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kdeclarative \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kitemviews \
		devel/kf5/kpackage \
		devel/kf5/kservice \
		devel/kf5/kxmlgui \
		x11/qt5/qtdeclarative

TEST_NO =	Yes

.include <bsd.port.mk>
