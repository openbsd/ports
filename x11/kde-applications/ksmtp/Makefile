# $OpenBSD: Makefile,v 1.1.1.1 2020/06/13 06:21:47 rsadowski Exp $

COMMENT =	KDE PIM SMTP library
DISTNAME =	ksmtp-${VERSION}
CATEGORIES =	devel mail

HOMEPAGE =	https://kontact.kde.org/

SHARED_LIBS +=  KPimSMTP               0.0 # 5.13.3

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5CoreAddons KF5I18n
WANTLIB += KF5KIOCore KF5Service Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Network m sasl2

MODULES +=	x11/kde-applications

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
