COMMENT =	libraries provides gravatar support
DISTNAME =	libgravatar-${VERSION}
CATEGORIES =	devel

SHARED_LIBS +=  KPim5Gravatar             1.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5I18n
WANTLIB += KF5KIOCore KF5Service KF5SonnetUi KF5TextAutoCorrectionCore
WANTLIB += KF5TextAutoCorrectionWidgets KF5TextWidgets KF5WidgetsAddons
WANTLIB += KPim5PimCommon KPim5TextEdit Qt5Concurrent Qt5Core
WANTLIB += Qt5DBus Qt5Gui Qt5Network Qt5Widgets Qt5Xml m

MODKDE5_TRANSLATIONS = yes

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kservice \
		devel/kf5/sonnet \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		x11/kde-applications/pimcommon

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
