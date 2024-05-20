COMMENT =	KDE-based library for accessing various Google services
DISTNAME =	libkgapi-${VERSION}
CATEGORIES =	www devel

SHARED_LIBS +=	KPim6GAPIBlogger          0.0 # 0.0
SHARED_LIBS +=	KPim6GAPICalendar         0.0 # 0.0
SHARED_LIBS +=	KPim6GAPICore             0.0 # 0.0
SHARED_LIBS +=	KPim6GAPIDrive            0.0 # 0.0
SHARED_LIBS +=	KPim6GAPILatitude         0.0 # 0.0
SHARED_LIBS +=	KPim6GAPIMaps             0.0 # 0.0
SHARED_LIBS +=	KPim6GAPIPeople           0.0 # 0.0
SHARED_LIBS +=	KPim6GAPITasks            0.0 # 0.0
SHARED_LIBS +=  kdexoauth2                3.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6CalendarCore KF6Contacts KF6Wallet
WANTLIB += Qt6Core Qt6Gui Qt6Network m

MODKDE5_TRANSLATIONS = yes

BUILD_DEPENDS =	devel/kf6/kcoreaddons \
		security/cyrus-sasl2

RUN_DEPENDS =	devel/kf6/kcoreaddons \
		security/cyrus-sasl2

LIB_DEPENDS =	devel/kf6/kcalendarcore \
		devel/kf6/kcontacts \
		devel/kf6/kwallet

.include <bsd.port.mk>
