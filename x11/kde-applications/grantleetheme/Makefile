# $OpenBSD: Makefile,v 1.4 2020/06/05 05:40:24 rsadowski Exp $

COMMENT =	grantlee theme library
DISTNAME =	grantleetheme-${VERSION}
CATEGORIES =	devel x11
REVISION =	1

SHARED_LIBS +=  KF5GrantleeTheme          1.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} Grantlee_Templates KF5Attica KF5Auth
WANTLIB += KF5AuthCore KF5Codecs KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5GuiAddons KF5I18n KF5IconThemes KF5NewStuff
WANTLIB += KF5NewStuffCore KF5Service KF5WidgetsAddons KF5XmlGui
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets Qt5Xml
WANTLIB += m

MODKDE5_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes

MODULES +=	x11/kde-applications

LIB_DEPENDS =	devel/kf5/attica \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
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
