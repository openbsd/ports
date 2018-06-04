# $OpenBSD: Makefile,v 1.6 2018/06/04 20:25:31 rsadowski Exp $

COMMENT =		widgets for KDE configuration dialogs
DISTNAME =		kconfigwidgets-${VERSION}

SHARED_LIBS =		KF5ConfigWidgets	3.1

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5CoreAddons KF5GuiAddons KF5I18n KF5WidgetsAddons
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Widgets Qt5Xml m

MODULES =		lang/python

BUILD_DEPENDS =		devel/gettext-tools \
			devel/kf5/kdoctools

RUN_DEPENDS =		devel/kf5/kdoctools

LIB_DEPENDS =		devel/kf5/kauth \
			devel/kf5/kcodecs \
			devel/kf5/kconfig \
			devel/kf5/kcoreaddons \
			devel/kf5/kguiaddons \
			devel/kf5/ki18n \
			devel/kf5/kwidgetsaddons

PORTHOME =		${WRKDIR}
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
