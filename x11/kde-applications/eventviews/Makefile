# $OpenBSD: Makefile,v 1.2 2020/06/17 04:28:22 rsadowski Exp $

COMMENT =	KDE PIM library for creating events
DISTNAME =	eventviews-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  KF5EventViews       0.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} KF5AkonadiCalendar KF5AkonadiContact
WANTLIB += KF5AkonadiCore KF5AkonadiWidgets KF5Auth KF5AuthCore
WANTLIB += KF5CalendarCore KF5CalendarSupport KF5CalendarUtils
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5Contacts KF5CoreAddons KF5GuiAddons
WANTLIB += KF5Holidays KF5I18n KF5IconThemes KF5IdentityManagement
WANTLIB += KF5ItemModels KF5Libkdepim KF5LibkdepimAkonadi KF5Mime
WANTLIB += KF5PimTextEdit KF5Service KF5WidgetsAddons KGantt Qt5Core
WANTLIB += Qt5Gui Qt5PrintSupport Qt5Widgets Qt5Xml c m

MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes

MODULES +=	x11/kde-applications

BUILD_DEPENDS =	textproc/libxslt \
		devel/boost

RUN_DEPENDS =	x11/kde-applications/kdepim-runtime

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcalendarcore \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcontacts \
		devel/kf5/kcoreaddons \
		devel/kf5/kguiaddons \
		devel/kf5/kholidays \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kitemmodels \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		graphics/kdiagram \
		x11/kde-applications/akonadi \
		x11/kde-applications/akonadi-calendar \
		x11/kde-applications/calendarsupport \
		x11/kde-applications/kidentitymanagement \
		x11/kde-applications/kmime \
		x11/kde-applications/kpimtextedit \
		x11/kde-applications/libkdepim

.include <bsd.port.mk>
