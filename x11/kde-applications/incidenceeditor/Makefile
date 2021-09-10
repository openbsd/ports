# $OpenBSD: Makefile,v 1.7 2021/09/10 08:43:50 rsadowski Exp $

COMMENT =	KDE PIM incidence editor
DISTNAME =	incidenceeditor-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  KF5IncidenceEditor    1.1 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} KF5AkonadiCalendar KF5AkonadiContact
WANTLIB += KF5AkonadiCore KF5AkonadiMime KF5AkonadiWidgets KF5Auth
WANTLIB += KF5AuthCore KF5CalendarCore KF5CalendarSupport KF5CalendarUtils
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5Contacts KF5CoreAddons KF5EventViews
WANTLIB += KF5GrantleeTheme KF5I18n KF5IMAP KF5IconThemes KF5IdentityManagement
WANTLIB += KF5ItemModels KF5JobWidgets KF5KIOCore KF5KIOGui KF5KIOWidgets
WANTLIB += KF5Ldap KF5Libkdepim KF5MailTransport KF5MailTransportAkonadi
WANTLIB += KF5Mime KF5PimCommon KF5PimCommonAkonadi KF5PimTextEdit
WANTLIB += KF5Service KF5Solid KF5SonnetUi KF5TextWidgets KF5Wallet
WANTLIB += KF5WidgetsAddons KF5WindowSystem KF5XmlGui KGantt Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport Qt5Widgets
WANTLIB += Qt5Xml c m

MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes

BUILD_DEPENDS =	devel/boost

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
