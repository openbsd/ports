COMMENT =	job-based API for interacting with IMAP servers
DISTNAME =	kimap-${VERSION}
CATEGORIES =	devel mail

SHARED_LIBS +=	KPim6IMAP                 0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} KF6CoreAddons KF6I18n KF6KIOCore
WANTLIB += KPim6Mime Qt6Core Qt6DBus Qt6Network m sasl2

MODKDE_TRANSLATIONS = yes

LIB_DEPENDS =	devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		security/cyrus-sasl2 \
		x11/kde-applications/kmime>=${MODKDE_VERSION}

.include <bsd.port.mk>
