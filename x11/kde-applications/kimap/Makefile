COMMENT =	job-based API for interacting with IMAP servers
DISTNAME =	kimap-${VERSION}
CATEGORIES =	devel mail

SHARED_LIBS +=  KPim5IMAP                 0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5CoreAddons KF5I18n
WANTLIB += KF5KIOCore KF5Service KPim5Mime Qt5Concurrent Qt5Core
WANTLIB += Qt5DBus Qt5Network m sasl2

MODKDE5_TRANSLATIONS = yes

LIB_DEPENDS =	devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kservice \
		security/cyrus-sasl2 \
		x11/kde-applications/kmime

.include <bsd.port.mk>
