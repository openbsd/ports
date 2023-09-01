COMMENT =	KDE itinerary data model and itinerary extraction library
DISTNAME =	kitinerary-${VERSION}
CATEGORIES =	devel

HOMEPAGE =	https://apps.kde.org/itinerary

SHARED_LIBS +=  KPim5Itinerary            1.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5CalendarCore KF5Codecs
WANTLIB += KF5Contacts KF5I18n KF5I18nLocaleData KPim5Mime KPim5PkPass
WANTLIB += Qt5Core Qt5Gui Qt5Network Qt5Qml ZXing c crypto m phonenumber
WANTLIB += poppler xml2 z

MODKDE5_TRANSLATIONS = yes

BUILD_DEPENDS =	textproc/libxml

RUN_DEPENDS =	textproc/libxml \
		misc/shared-mime-info

LIB_DEPENDS =	devel/kf5/karchive \
		devel/kf5/kcalendarcore \
		devel/kf5/kcontacts \
		print/poppler \
		productivity/libphonenumber \
		textproc/libxml \
		graphics/zxing-cpp \
		x11/kde-applications/kmime \
		x11/kde-applications/kpkpass \
		x11/qt5/qtdeclarative

TEST_IS_INTERACTIVE =	X11


.include <bsd.port.mk>
