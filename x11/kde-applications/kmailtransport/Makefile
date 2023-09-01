COMMENT =	mail transport service
DISTNAME =	kmailtransport-${VERSION}
CATEGORIES =	mail devel

SHARED_LIBS +=  KPim5MailTransport        1.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5I18n KF5JobWidgets KF5KIOCore KF5KIOGui KF5KIOWidgets
WANTLIB += KF5Service KF5Solid KF5Wallet KF5WidgetsAddons KF5WindowSystem
WANTLIB += KPim5GAPICore KPim5SMTP Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Network Qt5Widgets Qt5Xml X11 m qt5keychain

MODKDE5_TRANSLATIONS = yes

BUILD_DEPENDS =	devel/kf5/sonnet \
		devel/kf5/solid \
		devel/kf5/ktextwidgets \
		devel/boost

RUN_DEPENDS =	devel/kf5/sonnet \
		devel/kf5/solid \
		devel/kf5/ktextwidgets

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/kservice \
		devel/kf5/kwallet \
		devel/kf5/kwidgetsaddons \
		security/qtkeychain \
		x11/kde-applications/ksmtp \
		x11/kde-applications/libkgapi

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
