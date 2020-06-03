# $OpenBSD: Makefile,v 1.6 2020/06/03 05:13:40 rsadowski Exp $

COMMENT =	LDAP access API for KDE
DISTNAME =	kldap-${VERSION}
CATEGORIES =	devel
REVISION =	0

SHARED_LIBS +=  KF5Ldap                   1.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} KF5Completion KF5ConfigCore KF5CoreAddons
WANTLIB += KF5I18n KF5KIOCore KF5Service KF5WidgetsAddons Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets lber ldap
WANTLIB += m sasl2

MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DOCS = yes

MODULES +=	x11/kde-applications

LIB_DEPENDS +=	databases/openldap \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		security/cyrus-sasl2

.include <bsd.port.mk>
