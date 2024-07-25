COMMENT =	mail transport service
DISTNAME =	kmailtransport-${VERSION}
CATEGORIES =	mail devel

SHARED_LIBS +=	KPim6MailTransport        0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6I18n KF6JobWidgets KF6KIOCore KF6KIOGui KF6KIOWidgets
WANTLIB += KF6Service KF6Solid KF6WidgetsAddons KPim6GAPICore
WANTLIB += KPim6SMTP Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6Widgets
WANTLIB += m qt6keychain

MODKDE_TRANSLATIONS = yes

BUILD_DEPENDS =	devel/kf6/sonnet \
		devel/kf6/solid \
		devel/kf6/ktextwidgets \
		devel/kf6/kwallet \
		devel/boost

RUN_DEPENDS =	devel/kf6/sonnet \
		devel/kf6/solid \
		devel/kf6/ktextwidgets \
		devel/kf6/kwallet

LIB_DEPENDS =	devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kjobwidgets \
		devel/kf6/kservice \
		devel/kf6/kwidgetsaddons \
		devel/kf6/solid \
		security/qtkeychain,qt6 \
		x11/kde-applications/ksmtp>=${MODKDE_GEAR_VERSION} \
		x11/kde-applications/libkgapi>=${MODKDE_GEAR_VERSION}

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
