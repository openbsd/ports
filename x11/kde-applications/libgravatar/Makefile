# $OpenBSD: Makefile,v 1.1.1.1 2020/06/13 18:08:51 rsadowski Exp $

COMMENT =	libraries provides gravatar support
DISTNAME =	libgravatar-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  KF5Gravatar      0.0 # 5.13.3

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5I18n
WANTLIB += KF5KIOCore KF5PimCommon KF5Service KF5SonnetUi KF5TextWidgets
WANTLIB += KF5WidgetsAddons Qt5Concurrent Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Network Qt5Widgets Qt5Xml m

MODKDE5_TRANSLATIONS = yes

MODULES +=	x11/kde-applications

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kservice \
		devel/kf5/sonnet \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		x11/kde-applications/pimcommon

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
