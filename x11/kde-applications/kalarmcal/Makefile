# $OpenBSD: Makefile,v 1.2 2020/06/21 18:12:53 rsadowski Exp $

COMMENT =	KAlarm client library
DISTNAME =	kalarmcal-${VERSION}
CATEGORIES =	devel
REVISION =	0

SHARED_LIBS +=  KF5AlarmCalendar       0.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} KF5AkonadiCore KF5CalendarCore KF5CalendarUtils
WANTLIB += KF5ConfigCore KF5ConfigGui KF5CoreAddons KF5Holidays
WANTLIB += KF5I18n KF5IdentityManagement KF5ItemModels KF5PimTextEdit
WANTLIB += Qt5Core Qt5Gui Qt5Widgets Qt5Xml m

MODKDE5_TRANSLATIONS = yes

MODULES +=	x11/kde-applications

BUILD_DEPENDS =	devel/boost

LIB_DEPENDS =	devel/kf5/kcalendarcore \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kitemmodels \
		devel/kf5/kholidays \
		x11/kde-applications/akonadi \
		x11/kde-applications/kcalutils \
		x11/kde-applications/kidentitymanagement \
		x11/kde-applications/kpimtextedit

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
