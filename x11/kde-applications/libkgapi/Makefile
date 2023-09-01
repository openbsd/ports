COMMENT =	KDE-based library for accessing various Google services
DISTNAME =	libkgapi-${VERSION}
CATEGORIES =	www devel

SHARED_LIBS +=  KPim5GAPIBlogger          0.0 # 0.0
SHARED_LIBS +=  KPim5GAPICalendar         1.0 # 0.0
SHARED_LIBS +=  KPim5GAPICore             0.0 # 0.0
SHARED_LIBS +=  KPim5GAPIDrive            0.0 # 0.0
SHARED_LIBS +=  KPim5GAPILatitude         0.0 # 0.0
SHARED_LIBS +=  KPim5GAPIMaps             0.0 # 0.0
SHARED_LIBS +=  KPim5GAPIPeople           0.0 # 0.0
SHARED_LIBS +=  KPim5GAPITasks            0.0 # 0.0
SHARED_LIBS +=  kdexoauth2                3.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} KF5CalendarCore KF5Contacts KF5Wallet
WANTLIB += Qt5Core Qt5Gui Qt5Network m

MODKDE5_TRANSLATIONS = yes

BUILD_DEPENDS =	devel/kf5/kcoreaddons \
		security/cyrus-sasl2

RUN_DEPENDS =	devel/kf5/kcoreaddons \
		security/cyrus-sasl2

LIB_DEPENDS =	devel/kf5/kcalendarcore \
		devel/kf5/kcontacts \
		devel/kf5/kwallet

.include <bsd.port.mk>
