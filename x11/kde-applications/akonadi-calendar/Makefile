# $OpenBSD: Makefile,v 1.1.1.1 2020/06/13 17:12:18 rsadowski Exp $

COMMENT =	PIM Akonadi calendar support library
DISTNAME =	akonadi-calendar-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  KF5AkonadiCalendar     0.0 # 5.6

WANTLIB += ${COMPILER_LIBCXX} KF5AkonadiContact KF5AkonadiCore
WANTLIB += KF5AkonadiMime KF5AkonadiWidgets KF5Auth KF5AuthCore
WANTLIB += KF5CalendarCore KF5CalendarUtils KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5Contacts
WANTLIB += KF5CoreAddons KF5DBusAddons KF5I18n KF5IdentityManagement
WANTLIB += KF5ItemModels KF5JobWidgets KF5KIOCore KF5KIOWidgets
WANTLIB += KF5MailTransport KF5MailTransportAkonadi KF5Mime KF5PimTextEdit
WANTLIB += KF5Service KF5Wallet KF5WidgetsAddons KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets Qt5Xml
WANTLIB += m

MODKDE5_TRANSLATIONS = yes

MODULES +=	x11/kde-applications

LIB_DEPENDS +=	devel/kf5/kauth \
		devel/kf5/kcalendarcore \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcontacts \
		devel/kf5/kdbusaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kitemmodels \
		devel/kf5/kjobwidgets \
		devel/kf5/kservice \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		x11/kde-applications/akonadi \
		x11/kde-applications/akonadi-contacts \
		x11/kde-applications/kcalutils \
		x11/kde-applications/kidentitymanagement \
		x11/kde-applications/kmailtransport \
		x11/kde-applications/kmime

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
