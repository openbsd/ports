# $OpenBSD: Makefile,v 1.9 2022/01/05 08:02:52 rsadowski Exp $

COMMENT =	KDE PIM incidence editor
DISTNAME =	incidenceeditor-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  KF5IncidenceEditor    2.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} Grantlee_Templates KF5AkonadiCalendar
WANTLIB += KF5AkonadiContact KF5AkonadiCore KF5AkonadiMime KF5AkonadiWidgets
WANTLIB += KF5Auth KF5AuthCore KF5CalendarCore KF5CalendarSupport
WANTLIB += KF5CalendarUtils KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5Contacts KF5CoreAddons
WANTLIB += KF5EventViews KF5GrantleeTheme KF5I18n KF5IMAP KF5IconThemes
WANTLIB += KF5IdentityManagement KF5ItemModels KF5JobWidgets KF5KIOCore
WANTLIB += KF5KIOGui KF5KIOWidgets KF5Ldap KF5Libkdepim KF5MailTransport
WANTLIB += KF5MailTransportAkonadi KF5Mime KF5PimCommon KF5PimCommonAkonadi
WANTLIB += KF5PimTextEdit KF5Service KF5Solid KF5SonnetUi KF5TextWidgets
WANTLIB += KF5Wallet KF5WidgetsAddons KF5WindowSystem KF5XmlGui
WANTLIB += KGantt Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5PrintSupport Qt5Widgets Qt5Xml X11 c m

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
