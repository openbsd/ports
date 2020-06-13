# $OpenBSD: Makefile,v 1.1.1.1 2020/06/13 19:52:44 rsadowski Exp $

COMMENT =	KDE itinerary data model and itinerary extraction library
DISTNAME =	kitinerary-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  KPimItinerary       0.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5CalendarCore KF5Contacts
WANTLIB += KF5I18n KF5Mime KPimPkPass Qt5Core Qt5Gui Qt5Network
WANTLIB += Qt5Qml c m poppler xml2 z

MODKDE5_TRANSLATIONS = yes

MODULES +=	x11/kde-applications

BUILD_DEPENDS =	graphics/zxing \
		textproc/libxml

RUN_DEPENDS =	graphics/zxing \
		textproc/libxml \
		misc/shared-mime-info

LIB_DEPENDS =	devel/kf5/karchive \
		devel/kf5/kcalendarcore \
		devel/kf5/kcontacts \
		print/poppler \
		textproc/libxml \
		x11/kde-applications/kmime \
		x11/kde-applications/kpkpass \
		x11/qt5/qtdeclarative

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
