# $OpenBSD: Makefile,v 1.7 2020/09/07 14:49:17 rsadowski Exp $

COMMENT =	KDE Filesharing via Samba
DISTNAME =	kdenetwork-filesharing-${VERSION}
PKGNAME =	kdenetwork-filesharing-kf5-${VERSION}
CATEGORIES =	devel

WANTLIB += ${COMPILER_LIBCXX} KF5Completion KF5ConfigCore KF5CoreAddons
WANTLIB += KF5I18n KF5JobWidgets KF5KIOCore KF5KIOGui KF5KIOWidgets
WANTLIB += KF5Service KF5WidgetsAddons KF5WindowSystem Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets m

MODKDE5_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes

MODULES +=	x11/kde-applications

RUN_DEPENDS =	net/samba

LIB_DEPENDS =	devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/kwidgetsaddons

.include <bsd.port.mk>
