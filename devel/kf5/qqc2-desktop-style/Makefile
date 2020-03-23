# $OpenBSD: Makefile,v 1.4 2020/03/23 18:01:12 rsadowski Exp $

COMMENT =		QtQuickControls 2 style for painting
DISTNAME =		qqc2-desktop-style-${VERSION}
PKGNAME =		kf5-qqc2-desktop-style-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5IconThemes
WANTLIB += KF5Kirigami2 KF5WidgetsAddons Qt5Core Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5Quick Qt5Widgets Qt5Xml m

BUILD_DEPENDS =	x11/qt5/qtquickcontrols2

RUN_DEPENDS =	x11/qt5/qtquickcontrols2

LIB_DEPENDS =	devel/kf5/kauth>=${MODKF5_VERSION} \
		devel/kf5/kcodecs>=${MODKF5_VERSION} \
		devel/kf5/kconfig>=${MODKF5_VERSION} \
		devel/kf5/kconfigwidgets>=${MODKF5_VERSION} \
		devel/kf5/kiconthemes>=${MODKF5_VERSION} \
		devel/kf5/kirigami2>=${MODKF5_VERSION} \
		devel/kf5/kwidgetsaddons>=${MODKF5_VERSION} \
		x11/qt5/qtdeclarative

.include <bsd.port.mk>
