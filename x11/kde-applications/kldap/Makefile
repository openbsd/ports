# $OpenBSD: Makefile,v 1.12 2021/09/10 08:43:54 rsadowski Exp $

COMMENT =	LDAP access API for KDE
DISTNAME =	kldap-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  KF5Ldap                   3.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5CoreAddons KF5I18n
WANTLIB += KF5KIOCore KF5Service KF5WidgetsAddons Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets gio-2.0
WANTLIB += glib-2.0 gobject-2.0 intl lber ldap m qt5keychain sasl2
WANTLIB += secret-1

MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DOCS = yes

LIB_DEPENDS =	databases/openldap \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		security/cyrus-sasl2 \
		security/qtkeychain

.include <bsd.port.mk>
