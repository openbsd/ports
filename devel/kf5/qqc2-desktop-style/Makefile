# $OpenBSD: Makefile,v 1.1.1.1 2018/01/21 13:14:04 rsadowski Exp $

COMMENT =		QtQuickControls 2 style for painting
DISTNAME =		qqc2-desktop-style-${VERSION}
PKGNAME =		kf5-qqc2-desktop-style-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5IconThemes
WANTLIB += KF5Kirigami2 KF5WidgetsAddons Qt5Core Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5Quick Qt5Widgets Qt5Xml m

BUILD_DEPENDS =		x11/qt5/qtquickcontrols2

RUN_DEPENDS =		x11/qt5/qtquickcontrols2

LIB_DEPENDS =		x11/qt5/qtdeclarative \
			devel/kf5/kirigami2 \
			devel/kf5/kauth \
			devel/kf5/kcodecs \
			devel/kf5/kconfig \
			devel/kf5/kconfigwidgets \
			devel/kf5/kiconthemes \
			devel/kf5/kwidgetsaddons

.include <bsd.port.mk>
