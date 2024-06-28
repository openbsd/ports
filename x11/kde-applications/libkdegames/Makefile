COMMENT =	common code and data for many KDE games
DISTNAME =	libkdegames-${VERSION}
PKGNAME =	kf6-libkdegames-${VERSION}
CATEGORIES =	devel games

SHARED_LIBS +=	KDEGames6                 0.0 # 0.0
SHARED_LIBS +=	KDEGames6Private          0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6Attica KF6ColorScheme
WANTLIB += KF6Completion KF6ConfigCore KF6ConfigGui KF6ConfigWidgets
WANTLIB += KF6CoreAddons KF6DNSSD KF6GuiAddons KF6I18n KF6IconThemes
WANTLIB += KF6NewStuffCore KF6NewStuffWidgets KF6WidgetsAddons
WANTLIB += KF6XmlGui Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Qml Qt6QmlModels Qt6Quick Qt6Svg Qt6Widgets Qt6Xml
WANTLIB += m openal sndfile

MODKDE5_TRANSLATIONS = yes

BUILD_DEPENDS =	devel/kf6/kdbusaddons \
		devel/kf6/kitemviews \
		devel/kf6/kglobalaccel \
		devel/kf6/kbookmarks \
		devel/kf6/kjobwidgets \
		devel/kf6/kcrash \
		devel/kf6/ktextwidgets

RUN_DEPENDS =	devel/kf6/kbookmarks \
		devel/kf6/kcrash

LIB_DEPENDS =	audio/libsndfile \
		audio/openal \
		devel/kf6/attica \
		devel/kf6/karchive \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kdnssd \
		devel/kf6/kguiaddons \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/knewstuff \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		x11/qt6/qtdeclarative \
		x11/qt6/qtsvg

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
