COMMENT =	KDE-based library for accessing various Google services
DISTNAME =	libkgapi-${VERSION}
CATEGORIES =	www devel

SHARED_LIBS +=  KPimGAPIBlogger       3.0 # 5.13.3
SHARED_LIBS +=  KPimGAPICalendar      2.1 # 5.13.3
SHARED_LIBS +=  KPimGAPIContacts      2.1 # 5.13.3
SHARED_LIBS +=  KPimGAPICore          2.0 # 5.13.3
SHARED_LIBS +=  KPimGAPIDrive         2.0 # 5.13.3
SHARED_LIBS +=  KPimGAPILatitude      2.0 # 5.13.3
SHARED_LIBS +=  KPimGAPIMaps          2.0 # 5.13.3
SHARED_LIBS +=  KPimGAPITasks         2.0 # 5.13.3
SHARED_LIBS +=  kdexoauth2            3.0

WANTLIB += ${COMPILER_LIBCXX} KF5CalendarCore KF5Contacts KF5Wallet
WANTLIB += Qt5Core Qt5Gui Qt5Network Qt5Xml m

MODKDE5_TRANSLATIONS = yes

BUILD_DEPENDS =	devel/kf5/kcoreaddons \
		security/cyrus-sasl2

RUN_DEPENDS =	devel/kf5/kcoreaddons \
		security/cyrus-sasl2

LIB_DEPENDS =	devel/kf5/kcalendarcore \
		devel/kf5/kcontacts \
		devel/kf5/kwallet

.include <bsd.port.mk>
