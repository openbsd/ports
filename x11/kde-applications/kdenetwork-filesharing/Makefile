# $OpenBSD: Makefile,v 1.11 2021/11/10 06:37:46 rsadowski Exp $

COMMENT =	KDE Filesharing via Samba
DISTNAME =	kdenetwork-filesharing-${VERSION}
PKGNAME =	kdenetwork-filesharing-kf5-${VERSION}
CATEGORIES =	devel

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Completion
WANTLIB += KF5ConfigCore KF5CoreAddons KF5Declarative KF5I18n
WANTLIB += KF5JobWidgets KF5KIOCore KF5KIOGui KF5KIOWidgets KF5Package
WANTLIB += KF5Service KF5Solid KF5WidgetsAddons KF5WindowSystem
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5QmlModels Qt5Quick Qt5QuickWidgets Qt5Widgets X11
WANTLIB += c m

MODKDE5_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes

RUN_DEPENDS =	net/samba \
		x11/dbus,-suid

LIB_DEPENDS =	devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kpackage \
		devel/kf5/kdeclarative \
		x11/qt5/qtdeclarative

.include <bsd.port.mk>
