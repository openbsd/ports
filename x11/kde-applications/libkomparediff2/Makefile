# $OpenBSD: Makefile,v 1.7 2020/03/23 18:01:27 rsadowski Exp $

COMMENT =	library to compare files and strings
DISTNAME =	libkomparediff2-${VERSION}
PKGNAME =	libkomparediff2-kf5-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  komparediff2              1.0 # 5.2

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5I18n
WANTLIB += KF5KIOCore KF5Service KF5WidgetsAddons KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets Qt5Xml
WANTLIB += m

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
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
