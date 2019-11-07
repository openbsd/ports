# $OpenBSD: Makefile,v 1.1.1.1 2019/11/07 09:57:22 rsadowski Exp $

COMMENT =	grantlee theme library
DISTNAME =	grantleetheme-${VERSION}
CATEGORIES =	devel x11

SHARED_LIBS +=  KF5GrantleeTheme          0.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} Grantlee_Templates KF5Attica KF5Auth
WANTLIB += KF5Codecs KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5I18n KF5IconThemes KF5NewStuff KF5NewStuffCore
WANTLIB += KF5Service KF5WidgetsAddons KF5XmlGui Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Widgets Qt5Xml m

MODKDE5_TRANSLATIONS = yes

MODULES +=	x11/kde-applications

LIB_DEPENDS +=	devel/kf5/attica \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/knewstuff \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		x11/grantlee-qt5

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
