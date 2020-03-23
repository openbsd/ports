# $OpenBSD: Makefile,v 1.5 2020/03/23 18:01:27 rsadowski Exp $

COMMENT =	common sets for games using Mahjongg tiles
DISTNAME =	libkmahjongg-${VERSION}
CATEGORIES =	devel games

SHARED_LIBS +=  KF5KMahjongglib           1.0 # 5.0

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5I18n KF5WidgetsAddons Qt5Core Qt5Gui Qt5Svg Qt5Widgets
WANTLIB += Qt5Xml m

MODKDE5_TRANSLATIONS = yes

MODULES +=	x11/kde-applications

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kwidgetsaddons \
		x11/qt5/qtsvg

.include <bsd.port.mk>
