# $OpenBSD: Makefile,v 1.1.1.1 2018/12/09 10:20:45 rsadowski Exp $

COMMENT =	LDAP access API for KDE
DISTNAME =	kldap-${VERSION}
CATEGORIES =	devel

KDE5 =		Yes

SHARED_LIBS +=  KF5Ldap                   0.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} KF5Completion KF5ConfigCore KF5CoreAddons
WANTLIB += KF5I18n KF5KIOCore KF5Service KF5WidgetsAddons Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets lber ldap
WANTLIB += m sasl2

BUILD_DEPENDS +=devel/gettext-tools \
		devel/kf5/kdoctools

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		devel/kf5/kdoctools \
		x11/gtk+3,-guic

LIB_DEPENDS =	databases/openldap \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kwidgetsaddons \
		security/cyrus-sasl2

.include <bsd.port.mk>
