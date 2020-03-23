# $OpenBSD: Makefile,v 1.12 2020/03/23 18:01:08 rsadowski Exp $

COMMENT =		KDE icon GUI utility library
DISTNAME =		kiconthemes-${VERSION}

SHARED_LIBS =		KF5IconThemes		4.0

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Auth KF5AuthCore KF5Codecs
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5I18n KF5ItemViews KF5WidgetsAddons Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Svg Qt5Widgets Qt5Xml c m

BUILD_DEPENDS =		devel/gettext,-tools

LIB_DEPENDS =		devel/kf5/karchive>=${MODKF5_VERSION} \
			devel/kf5/kcodecs>=${MODKF5_VERSION} \
			devel/kf5/kconfig>=${MODKF5_VERSION} \
			devel/kf5/kconfigwidgets>=${MODKF5_VERSION} \
			devel/kf5/kcoreaddons>=${MODKF5_VERSION} \
			devel/kf5/ki18n>=${MODKF5_VERSION} \
			devel/kf5/kitemviews>=${MODKF5_VERSION} \
			devel/kf5/kwidgetsaddons>=${MODKF5_VERSION} \
			x11/qt5/qtsvg

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
