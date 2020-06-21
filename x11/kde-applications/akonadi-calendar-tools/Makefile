# $OpenBSD: Makefile,v 1.2 2020/06/21 18:12:53 rsadowski Exp $

COMMENT =	PIM Akonadi calendar tools
DISTNAME =	akonadi-calendar-tools-${VERSION}
CATEGORIES =	devel
REVISION =	0

WANTLIB += ${COMPILER_LIBCXX} KF5AkonadiCalendar KF5AkonadiCore
WANTLIB += KF5CalendarCore KF5CalendarSupport KF5CalendarUtils
WANTLIB += KF5ConfigCore KF5ConfigGui KF5CoreAddons KF5I18n KF5IdentityManagement
WANTLIB += KF5ItemModels KF5Libkdepim KF5Mime KF5PimTextEdit KF5WidgetsAddons
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5PrintSupport Qt5Widgets Qt5Xml
WANTLIB += c m

MODKDE5_TRANSLATIONS = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_DESKTOP_FILE = yes

MODKF5_L10N_CONFLICT = yes
MODKF5_I18N_CONFLICT = yes

MODULES +=	x11/kde-applications

BUILD_DEPENDS =	devel/boost

LIB_DEPENDS =	devel/kf5/kconfig \
		devel/kf5/kcalendarcore \
		devel/kf5/ki18n \
		devel/kf5/kitemmodels \
		devel/kf5/kwidgetsaddons \
		x11/kde-applications/akonadi \
		x11/kde-applications/kidentitymanagement \
		x11/kde-applications/akonadi-calendar \
		x11/kde-applications/libkdepim \
		x11/kde-applications/kpimtextedit \
		x11/kde-applications/kmime \
		x11/kde-applications/calendarsupport

.include <bsd.port.mk>
