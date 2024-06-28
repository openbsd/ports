COMMENT =	KDE itinerary data model and itinerary extraction library
DISTNAME =	kitinerary-${VERSION}
CATEGORIES =	devel

HOMEPAGE =	https://apps.kde.org/itinerary

SHARED_LIBS +=	KPim6Itinerary            0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6CalendarCore KF6Codecs
WANTLIB += KF6Contacts KF6I18n KF6I18nLocaleData KPim6Mime KPim6PkPass
WANTLIB += Qt6Core Qt6Gui Qt6Network Qt6Qml ZXing c crypto m phonenumber
WANTLIB += poppler xml2 z

MODKDE5_TRANSLATIONS = yes

BUILD_DEPENDS =	textproc/libxml

RUN_DEPENDS =	textproc/libxml \
		misc/shared-mime-info

LIB_DEPENDS =	devel/kf6/karchive \
		devel/kf6/kcalendarcore \
		devel/kf6/ki18n \
		devel/kf6/kcontacts \
		devel/kf6/kcodecs \
		print/poppler \
		productivity/libphonenumber \
		textproc/libxml \
		graphics/zxing-cpp \
		x11/kde-applications/kmime>=${MODKDE_VERSION} \
		x11/kde-applications/kpkpass>=${MODKDE_VERSION} \
		x11/qt6/qtdeclarative

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
