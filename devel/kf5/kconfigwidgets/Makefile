# $OpenBSD: Makefile,v 1.4 2017/07/27 09:34:37 sthen Exp $

COMMENT =		widgets for KDE configuration dialogs
DISTNAME =		kconfigwidgets-${VERSION}
REVISION =		0

SHARED_LIBS =		KF5ConfigWidgets	2.0

WANTLIB =  KF5Auth KF5Codecs KF5ConfigCore KF5ConfigGui KF5CoreAddons
WANTLIB += KF5GuiAddons KF5I18n KF5WidgetsAddons ${COMPILER_LIBCXX} Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Widgets Qt5Xml m

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
