# $OpenBSD: Makefile,v 1.11 2019/05/20 22:15:04 naddy Exp $

COMMENT =	utility classes for KDE control modules
DISTNAME =	kcmutils-${VERSION}

SHARED_LIBS =	KF5KCMUtils	4.3

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5Declarative
WANTLIB += KF5I18n KF5IconThemes KF5ItemViews KF5Package KF5QuickAddons
WANTLIB += KF5Service KF5WidgetsAddons KF5XmlGui Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Qml Qt5Quick Qt5QuickWidgets Qt5Widgets
WANTLIB += Qt5Xml m

BUILD_DEPENDS =	devel/gettext,-tools \
		x11/qt5/qtquickcontrols

RUN_DEPENDS =	x11/qt5/qtquickcontrols

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

.include <bsd.port.mk>
