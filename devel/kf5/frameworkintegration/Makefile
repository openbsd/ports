# $OpenBSD: Makefile,v 1.14 2019/05/20 22:15:04 naddy Exp $

COMMENT =	KDE Plasma integration support for Qt-based apps
DISTNAME =	frameworkintegration-${VERSION}
REVISION =	0

SHARED_LIBS =	KF5Style		4.3

WANTLIB += ${COMPILER_LIBCXX} KF5Attica KF5Auth KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5I18n
WANTLIB += KF5IconThemes KF5NewStuffCore KF5Notifications KF5WidgetsAddons
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets Qt5X11Extras
WANTLIB += Qt5Xml c m xcb

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/kf5/kpackage \
		x11/qt5/qtx11extras

RUN_DEPENDS =	fonts/noto/fonts

LIB_DEPENDS =	devel/kf5/attica \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/knewstuff \
		devel/kf5/knotifications \
		devel/kf5/kwidgetsaddons \

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_AppStreamQt=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_packagekitqt5=Yes

PORTHOME =	${WRKDIR}
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
