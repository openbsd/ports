COMMENT =	weather information library
DISTNAME =	kweathercore-${VERSION}
CATEGORIES =	x11 geo

HOMEPAGE =	https://invent.kde.org/libraries/kweathercore

SHARED_LIBS +=	KWeatherCore              0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} KF6Holidays KF6I18n KF6I18nLocaleData
WANTLIB += Qt6Core Qt6Network Qt6Positioning m

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes

LIB_DEPENDS =	devel/kf6/kholidays \
		devel/kf6/ki18n \
		x11/qt6/qtpositioning

.include <bsd.port.mk>
