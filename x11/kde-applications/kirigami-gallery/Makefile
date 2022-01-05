# $OpenBSD: Makefile,v 1.3 2022/01/05 08:02:56 rsadowski Exp $

COMMENT =	kirigami component gallery application
DISTNAME =	kirigami-gallery-${VERSION}
CATEGORIES =	devel

HOMEPAGE =	https://apps.kde.org/de/kirigami2.gallery/

WANTLIB += ${COMPILER_LIBCXX} KF5ItemModels KF5Kirigami2 Qt5Core
WANTLIB += Qt5Gui Qt5Network Qt5Qml Qt5QmlModels Qt5Quick Qt5QuickControls2
WANTLIB += Qt5Svg Qt5Widgets c m

MODKDE5_DESKTOP_FILE = yes
MODKDE5_TRANSLATIONS = yes

BUILD_DEPENDS =	devel/kf5/kpackage \
		x11/qt5/qtquickcontrols

RUN_DEPENDS =	devel/kf5/kpackage \
		devel/kf5/breeze-icons \
		devel/kf5/qqc2-desktop-style \
		x11/qt5/qtquickcontrols

LIB_DEPENDS =	devel/kf5/kitemmodels \
		devel/kf5/kirigami2 \
		x11/qt5/qtsvg \
		x11/qt5/qtdeclarative \
		x11/qt5/qtquickcontrols2

.include <bsd.port.mk>
