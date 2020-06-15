# $OpenBSD: Makefile,v 1.6 2020/06/15 04:11:02 rsadowski Exp $

COMMENT =	KDE Filesharing via Samba
DISTNAME =	kdenetwork-filesharing-${VERSION}
PKGNAME =	kdenetwork-filesharing-kf5-${VERSION}
CATEGORIES =	devel
REVISION =	2

WANTLIB += ${COMPILER_LIBCXX} KF5Completion KF5ConfigCore KF5CoreAddons
WANTLIB += KF5I18n KF5JobWidgets KF5KIOCore KF5KIOWidgets KF5Service
WANTLIB += KF5WidgetsAddons Qt5Concurrent Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Network Qt5Widgets m

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
