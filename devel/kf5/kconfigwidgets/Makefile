# $OpenBSD: Makefile,v 1.11 2020/03/23 18:01:05 rsadowski Exp $

COMMENT =		widgets for KDE configuration dialogs
DISTNAME =		kconfigwidgets-${VERSION}

SHARED_LIBS =		KF5ConfigWidgets	4.0

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5CoreAddons KF5GuiAddons KF5I18n KF5WidgetsAddons
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Widgets Qt5Xml m

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/kf5/kdoctools>=${MODKF5_VERSION}

RUN_DEPENDS =		devel/kf5/kdoctools>=${MODKF5_VERSION}

LIB_DEPENDS =		devel/kf5/kauth>=${MODKF5_VERSION} \
			devel/kf5/kcodecs>=${MODKF5_VERSION} \
			devel/kf5/kconfig>=${MODKF5_VERSION} \
			devel/kf5/kcoreaddons>=${MODKF5_VERSION} \
			devel/kf5/kguiaddons>=${MODKF5_VERSION} \
			devel/kf5/ki18n>=${MODKF5_VERSION} \
			devel/kf5/kwidgetsaddons>=${MODKF5_VERSION}

PORTHOME =		${WRKDIR}
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
