# $OpenBSD: Makefile,v 1.1.1.1 2020/06/13 05:51:43 rsadowski Exp $

COMMENT =	PIM Akonadi contacts support library
DISTNAME =	akonadi-contacts-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  KF5AkonadiContact         0.0 # 5.13.2
SHARED_LIBS +=  KF5ContactEditor          0.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} KF5AkonadiCore KF5AkonadiWidgets
WANTLIB += KF5Auth KF5AuthCore KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5Contacts KF5CoreAddons
WANTLIB += KF5DBusAddons KF5I18n KF5IconThemes KF5ItemModels KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOWidgets KF5Mime KF5Prison KF5Service
WANTLIB += KF5SonnetUi KF5TextWidgets KF5WidgetsAddons KF5XmlGui
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets
WANTLIB += Qt5Xml m

MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes

MODULES +=	x11/kde-applications

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcontacts \
		devel/kf5/kdbusaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kitemmodels \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		devel/kf5/prison \
		devel/kf5/sonnet \
		x11/kde-applications/akonadi \
		x11/kde-applications/kmime

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
