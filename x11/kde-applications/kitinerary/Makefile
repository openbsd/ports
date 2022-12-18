COMMENT =	KDE itinerary data model and itinerary extraction library
DISTNAME =	kitinerary-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  KPimItinerary       6.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5CalendarCore KF5Codecs
WANTLIB += KF5Contacts KF5I18n KF5I18nLocaleData KF5Mime KPimPkPass
WANTLIB += Qt5Core Qt5Gui Qt5Network Qt5Qml c crypto m phonenumber
WANTLIB += poppler xml2 z

MODKDE5_TRANSLATIONS = yes

BUILD_DEPENDS =	graphics/zxing \
		textproc/libxml

RUN_DEPENDS =	graphics/zxing \
		textproc/libxml \
		misc/shared-mime-info

LIB_DEPENDS =	devel/kf5/karchive \
		devel/kf5/kcalendarcore \
		devel/kf5/kcontacts \
		print/poppler \
		productivity/libphonenumber \
		textproc/libxml \
		x11/kde-applications/kmime \
		x11/kde-applications/kpkpass \
		x11/qt5/qtdeclarative

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
