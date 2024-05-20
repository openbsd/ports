USE_WXNEEDED =	Yes

COMMENT =	letter order game
DISTNAME =	kanagram-${VERSION}
CATEGORIES =	education x11

HOMEPAGE =	https://edu.kde.org/kanagram/

WANTLIB += ${COMPILER_LIBCXX} GL KEduVocDocument KF6Attica KF6ColorScheme
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6Crash KF6I18n KF6NewStuffCore KF6NewStuffWidgets
WANTLIB += KF6SonnetCore KF6WidgetsAddons KF6XmlGui Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Multimedia Qt6Network Qt6OpenGL Qt6Qml Qt6QmlModels
WANTLIB += Qt6Quick Qt6TextToSpeech Qt6Widgets Qt6Xml c m

MODKDE5_DESKTOP_FILE = yes
MODKDE5_ICON_CACHE = yes
MODKDE5_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE5_DOCS = yes

BUILD_DEPENDS =	devel/kf6/kio

RUN_DEPENDS =	devel/kf6/kio

LIB_DEPENDS =	devel/kf6/attica \
		devel/kf6/kcolorscheme \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/ki18n \
		devel/kf6/knewstuff \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/kf6/sonnet \
		x11/kde-applications/libkeduvocdocument>=${MODKDE_VERSION} \
		x11/qt6/qtdeclarative \
		x11/qt6/qtmultimedia \
		x11/qt6/qtspeech

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
