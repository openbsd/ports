# $OpenBSD: Makefile,v 1.11 2021/09/10 08:43:59 rsadowski Exp $

COMMENT =	KDE SANE (scanner) wrapper library
DISTNAME =	libksane-${VERSION}
PKGNAME =	libksane-kf5-${VERSION}
CATEGORIES =	graphics devel

SHARED_LIBS +=  KF5Sane                   2.2 # 5.1

WANTLIB += ${COMPILER_LIBCXX} KF5I18n KF5SonnetUi KF5TextWidgets
WANTLIB += KF5Wallet KF5WidgetsAddons Qt5Core Qt5Gui Qt5Widgets
WANTLIB += m sane

MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes

LIB_DEPENDS =	devel/kf5/ki18n \
		devel/kf5/ktextwidgets \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons \
		devel/kf5/sonnet \
		graphics/sane-backends

.include <bsd.port.mk>
