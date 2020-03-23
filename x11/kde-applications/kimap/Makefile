# $OpenBSD: Makefile,v 1.5 2020/03/23 18:01:21 rsadowski Exp $

COMMENT =	job-based API for interacting with IMAP servers
DISTNAME =	kimap-${VERSION}
CATEGORIES =	devel mail

SHARED_LIBS +=  KF5IMAP                   1.0 # 5.5

WANTLIB += ${COMPILER_LIBCXX} KF5Codecs KF5ConfigCore KF5CoreAddons
WANTLIB += KF5I18n KF5KIOCore KF5Mime KF5Service Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Network m sasl2

MODKDE5_TRANSLATIONS = yes

MODULES +=	x11/kde-applications

LIB_DEPENDS =	devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kservice \
		security/cyrus-sasl2 \
		x11/kde-applications/kmime

.include <bsd.port.mk>
