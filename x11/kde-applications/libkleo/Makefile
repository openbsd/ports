# $OpenBSD: Makefile,v 1.2 2019/03/24 11:57:03 rsadowski Exp $

COMMENT =	certificate manager for KDE
DISTNAME =	libkleo-${VERSION}
CATEGORIES =	security devel


SHARED_LIBS +=  KF5Libkleo                0.0 # 5.10

WANTLIB += ${COMPILER_LIBCXX} KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5CoreAddons KF5I18n KF5ItemModels KF5PimTextEdit
WANTLIB += KF5WidgetsAddons KF5WindowSystem Qt5Core Qt5Gui Qt5Widgets
WANTLIB += gpgmepp m qgpgme

MODKDE5_TRANSLATIONS = yes

MODULES +=	x11/kde-applications

BUILD_DEPENDS +=	devel/boost

LIB_DEPENDS +=	devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/ki18n \
		devel/kf5/kitemmodels \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		security/gpgme,-qt \
		x11/kde-applications/kpimtextedit


.include <bsd.port.mk>
