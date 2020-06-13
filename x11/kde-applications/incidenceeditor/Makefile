# $OpenBSD: Makefile,v 1.1.1.1 2020/06/13 19:43:03 rsadowski Exp $

COMMENT =	KDE PIM incidence editor
DISTNAME =	incidenceeditor-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  KF5IncidenceEditor    0.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} KF5AkonadiCalendar KF5AkonadiContact
WANTLIB += KF5AkonadiCore KF5AkonadiMime KF5AkonadiWidgets KF5Auth
WANTLIB += KF5AuthCore KF5CalendarCore KF5CalendarSupport KF5CalendarUtils
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5Contacts KF5CoreAddons KF5EventViews
WANTLIB += KF5I18n KF5IconThemes KF5IdentityManagement KF5ItemModels
WANTLIB += KF5JobWidgets KF5KIOCore KF5KIOWidgets KF5KdepimDBusInterfaces
WANTLIB += KF5Ldap KF5Libkdepim KF5LibkdepimAkonadi KF5MailTransport
WANTLIB += KF5MailTransportAkonadi KF5Mime KF5PimTextEdit KF5Service
WANTLIB += KF5SonnetUi KF5TextWidgets KF5Wallet KF5WidgetsAddons
WANTLIB += KF5XmlGui KGantt Qt5Concurrent Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Network Qt5PrintSupport Qt5Widgets Qt5Xml c m

MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes

MODULES +=	x11/kde-applications

LIB_DEPENDS =	graphics/kdiagram \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcontacts \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kitemmodels \
		devel/kf5/kcalendarcore \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		devel/kf5/sonnet \
		x11/kde-applications/akonadi \
		x11/kde-applications/calendarsupport \
		x11/kde-applications/akonadi-calendar \
		x11/kde-applications/kidentitymanagement \
		x11/kde-applications/kmime \
		x11/kde-applications/kldap \
		x11/kde-applications/kpimtextedit \
		x11/kde-applications/libkdepim \
		x11/kde-applications/eventviews


TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
