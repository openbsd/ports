# $OpenBSD: Makefile,v 1.8 2021/11/10 06:37:50 rsadowski Exp $

COMMENT =	mail transport service
DISTNAME =	kmailtransport-${VERSION}
CATEGORIES =	mail devel

SHARED_LIBS +=  KF5MailTransport             2.0 # 5.13.3
SHARED_LIBS +=  KF5MailTransportAkonadi      1.0 # 5.13.3

WANTLIB += ${COMPILER_LIBCXX} KF5AkonadiCore KF5AkonadiMime KF5Auth
WANTLIB += KF5AuthCore KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5I18n KF5ItemModels
WANTLIB += KF5JobWidgets KF5KCMUtils KF5KIOCore KF5KIOGui KF5KIOWidgets
WANTLIB += KF5Mime KF5Service KF5Solid KF5Wallet KF5WidgetsAddons
WANTLIB += KF5WindowSystem KPimGAPICore KPimSMTP Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets Qt5Xml
WANTLIB += X11 m qt5keychain

MODKDE5_TRANSLATIONS = yes

BUILD_DEPENDS =	devel/kf5/sonnet \
		devel/kf5/solid \
		devel/kf5/ktextwidgets \
		devel/boost

RUN_DEPENDS =	devel/kf5/sonnet \
		devel/kf5/solid \
		devel/kf5/ktextwidgets

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcmutils \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kitemmodels \
		devel/kf5/kjobwidgets \
		devel/kf5/kservice \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons \
		security/qtkeychain \
		x11/kde-applications/akonadi \
		x11/kde-applications/akonadi-mime \
		x11/kde-applications/kmime \
		x11/kde-applications/ksmtp \
		x11/kde-applications/libkgapi

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
