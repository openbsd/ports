# $OpenBSD: Makefile,v 1.15 2020/03/23 18:01:04 rsadowski Exp $

COMMENT =	KDE Plasma integration support for Qt-based apps
DISTNAME =	frameworkintegration-${VERSION}

SHARED_LIBS =	KF5Style		5.0

WANTLIB += ${COMPILER_LIBCXX} KF5Attica KF5Auth KF5AuthCore KF5Codecs
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5I18n KF5IconThemes KF5NewStuffCore KF5Notifications
WANTLIB += KF5WidgetsAddons Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Widgets Qt5Xml c m

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/kf5/kpackage>=${MODKF5_VERSION} \
		x11/qt5/qtx11extras

RUN_DEPENDS =	fonts/noto/fonts

LIB_DEPENDS =	devel/kf5/attica>=${MODKF5_VERSION} \
		devel/kf5/kconfig>=${MODKF5_VERSION} \
		devel/kf5/kconfigwidgets>=${MODKF5_VERSION} \
		devel/kf5/ki18n>=${MODKF5_VERSION} \
		devel/kf5/kiconthemes>=${MODKF5_VERSION} \
		devel/kf5/knewstuff>=${MODKF5_VERSION} \
		devel/kf5/knotifications>=${MODKF5_VERSION} \
		devel/kf5/kwidgetsaddons>=${MODKF5_VERSION}

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_AppStreamQt=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_packagekitqt5=ON

PORTHOME =	${WRKDIR}
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
