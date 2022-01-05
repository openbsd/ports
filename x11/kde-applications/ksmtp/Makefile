# $OpenBSD: Makefile,v 1.4 2022/01/05 08:03:00 rsadowski Exp $

COMMENT =	KDE PIM SMTP library
DISTNAME =	ksmtp-${VERSION}
CATEGORIES =	devel mail

HOMEPAGE =	https://kontact.kde.org/

SHARED_LIBS +=  KPimSMTP               2.0 # 5.13.3

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5CoreAddons KF5I18n
WANTLIB += KF5KIOCore KF5Service Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Network m sasl2

MODKDE5_TRANSLATIONS = yes

LIB_DEPENDS =	devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kservice \
		security/cyrus-sasl2

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
