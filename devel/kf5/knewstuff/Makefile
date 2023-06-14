COMMENT =	KDE framework for sharing additional application data
DISTNAME =	knewstuff-${VERSION}

SHARED_LIBS +=  KF5NewStuff               7.0
SHARED_LIBS +=  KF5NewStuffCore           7.0
SHARED_LIBS +=  KF5NewStuffWidgets        1.0

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Attica KF5Auth KF5AuthCore
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5I18n KF5IconThemes
WANTLIB += KF5ItemViews KF5JobWidgets KF5KIOCore KF5KIOGui KF5Package
WANTLIB += KF5Service KF5Syndication KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5QmlModels Qt5Quick Qt5Widgets Qt5Xml X11
WANTLIB += c m

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/kf5/kirigami2>=${MODKF5_VERSION}

RUN_DEPENDS =	devel/kf5/kirigami2>=${MODKF5_VERSION} \
		devel/desktop-file-utils

LIB_DEPENDS =	devel/kf5/karchive>=${MODKF5_VERSION} \
		devel/kf5/attica>=${MODKF5_VERSION} \
		devel/kf5/kcompletion>=${MODKF5_VERSION} \
		devel/kf5/kconfig>=${MODKF5_VERSION} \
		devel/kf5/kcoreaddons>=${MODKF5_VERSION} \
		devel/kf5/ki18n>=${MODKF5_VERSION} \
		devel/kf5/kiconthemes>=${MODKF5_VERSION} \
		devel/kf5/kio>=${MODKF5_VERSION} \
		devel/kf5/kitemviews>=${MODKF5_VERSION} \
		devel/kf5/kpackage>=${MODKF5_VERSION} \
		devel/kf5/kservice>=${MODKF5_VERSION} \
		devel/kf5/kwidgetsaddons>=${MODKF5_VERSION} \
		devel/kf5/syndication>=${MODKF5_VERSION} \
		devel/kf5/kxmlgui>=${MODKF5_VERSION} \
		x11/qt5/qtdeclarative

PORTHOME =		${WRKDIR}
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
