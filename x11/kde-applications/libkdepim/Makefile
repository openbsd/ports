# $OpenBSD: Makefile,v 1.6 2021/12/10 06:58:42 rsadowski Exp $

COMMENT =	library for common kdepim apps
DISTNAME =	libkdepim-${VERSION}
CATEGORIES =	devel
REVISION =	0

SHARED_LIBS +=  KF5Libkdepim               3.0 # 5.6

WANTLIB += ${COMPILER_LIBCXX} KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5I18n KF5WidgetsAddons Qt5Core Qt5Gui Qt5Widgets
WANTLIB += Qt5Xml m

MODKDE5_TRANSLATIONS = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

BUILD_DEPENDS =	devel/boost \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kjobwidgets \
		x11/qt5/qttools

LIB_DEPENDS =	devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/ki18n \
		devel/kf5/kwidgetsaddons

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
