# $OpenBSD: Makefile,v 1.5 2020/06/03 05:13:44 rsadowski Exp $

COMMENT =	certificate manager for KDE
DISTNAME =	libkleo-${VERSION}
CATEGORIES =	security devel
REVISION =	0

SHARED_LIBS +=  KF5Libkleo                0.0 # 5.10

WANTLIB += ${COMPILER_LIBCXX} KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5CoreAddons KF5I18n KF5ItemModels KF5PimTextEdit
WANTLIB += KF5WidgetsAddons Qt5Core Qt5Gui Qt5Widgets gpgmepp
WANTLIB += m qgpgme

MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes

MODULES +=	x11/kde-applications

BUILD_DEPENDS =	devel/boost

LIB_DEPENDS =	devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/ki18n \
		devel/kf5/kitemmodels \
		devel/kf5/kwidgetsaddons \
		security/gpgme,-qt \
		x11/kde-applications/kpimtextedit


.include <bsd.port.mk>
