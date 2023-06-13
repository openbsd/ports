COMMENT =	mail transport service
DISTNAME =	kmailtransport-${VERSION}
CATEGORIES =	mail devel

SHARED_LIBS +=  KPim5MailTransport        0.0 # 0.0
SHARED_LIBS +=  KPim5MailTransportAkonadi 0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5I18n KF5ItemModels KF5JobWidgets KF5KCMUtils KF5KIOCore
WANTLIB += KF5KIOGui KF5KIOWidgets KF5Service KF5Solid KF5Wallet
WANTLIB += KF5WidgetsAddons KF5WindowSystem KPim5AkonadiCore KPim5AkonadiMime
WANTLIB += KPim5AkonadiWidgets KPim5GAPICore KPim5Mime KPim5SMTP
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets
WANTLIB += Qt5Xml X11 m qt5keychain

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
