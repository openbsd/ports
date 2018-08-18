# $OpenBSD: Makefile,v 1.1.1.1 2018/08/18 18:17:42 rsadowski Exp $

COMMENT =	job-based API for interacting with IMAP servers
DISTNAME =	kimap-${VERSION}
CATEGORIES =	devel mail

KDE5 =		Yes

SHARED_LIBS +=  KF5IMAP                   0.0 # 5.5

WANTLIB += ${COMPILER_LIBCXX} KF5Codecs KF5ConfigCore KF5CoreAddons
WANTLIB += KF5I18n KF5KIOCore KF5Mime KF5Service Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Network m sasl2

MODULES +=	lang/python

MODPY_RUNDEP =	No

BUILD_DEPENDS +=devel/gettext-tools

LIB_DEPENDS =	devel/kf5/kcodecs \
		devel/kf5/kcoreaddons \
		devel/kf5/kconfig \
		devel/kf5/kio \
		devel/kf5/ki18n \
		devel/kf5/kservice \
		x11/kde-applications/kmime \
		security/cyrus-sasl2

.include <bsd.port.mk>
