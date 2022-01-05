# $OpenBSD: Makefile,v 1.12 2022/01/05 08:02:50 rsadowski Exp $

COMMENT =	PIM Akonadi contacts support library
DISTNAME =	akonadi-contacts-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  KF5AkonadiContact         1.0 # 5.13.2
SHARED_LIBS +=  KF5ContactEditor          0.2 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} Grantlee_Templates KF5AkonadiCore
WANTLIB += KF5AkonadiWidgets KF5Auth KF5AuthCore KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5Contacts
WANTLIB += KF5CoreAddons KF5GrantleeTheme KF5I18n KF5I18nLocaleData
WANTLIB += KF5IconThemes KF5ItemModels KF5JobWidgets KF5KIOCore
WANTLIB += KF5KIOGui KF5KIOWidgets KF5Libkleo KF5Mime KF5Prison
WANTLIB += KF5Service KF5Solid KF5SonnetUi KF5TextWidgets KF5WidgetsAddons
WANTLIB += KF5WindowSystem KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Widgets Qt5Xml X11 assuan gpgme
WANTLIB += gpgmepp m qgpgme

MODKDE5_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes

BUILD_DEPENDS =	devel/boost \
		devel/kf5/kcmutils

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcontacts \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kitemmodels \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/prison \
		devel/kf5/sonnet \
		x11/grantlee-qt5 \
		x11/kde-applications/akonadi \
		x11/kde-applications/grantleetheme \
		x11/kde-applications/kmime \
		x11/kde-applications/libkleo

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
