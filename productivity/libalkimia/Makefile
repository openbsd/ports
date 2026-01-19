USE_WXNEEDED =	Yes

COMMENT =	KDE financial data handling library

CATEGORIES =	productivity x11

V =		8.2.1
PKGNAME =	libalkimia-$V
DISTNAME =	alkimia-$V
REVISION =	0

SHARED_LIBS +=	alkimia6                  0.1 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Attica KF6Codecs KF6ColorScheme
WANTLIB += KF6Completion KF6ConfigCore KF6ConfigGui KF6ConfigWidgets
WANTLIB += KF6CoreAddons KF6GuiAddons KF6I18n KF6IconThemes KF6NewStuffCore
WANTLIB += KF6NewStuffWidgets KF6SonnetUi KF6TextWidgets KF6WidgetsAddons
WANTLIB += KF6XmlGui Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6Positioning Qt6PrintSupport Qt6Qml Qt6Quick Qt6WebChannel
WANTLIB += Qt6WebEngineCore Qt6WebEngineWidgets Qt6Widgets Qt6Xml
WANTLIB += c gmp m

HOMEPAGE =	https://community.kde.org/Alkimia/libalkimia

SITES =		${SITE_KDE:=stable/alkimia/$V/}
EXTRACT_SUFX =	.tar.xz

# LGPLv2.1+
PERMIT_PACKAGE = Yes

MODULES =	devel/kf6

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/gmp,-cxx

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/gmp,-cxx \
		x11/gtk+4,-guic

LIB_DEPENDS =	devel/gmp \
		devel/kf6/attica \
		devel/kf6/kcodecs \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kguiaddons \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/knewstuff \
		devel/kf6/ktextwidgets \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/kf6/sonnet \
		x11/qt6/qtdeclarative \
		x11/qt6/qtpositioning \
		x11/qt6/qtwebchannel \
		x11/qt6/qtwebengine

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON

# Build plasma applets
CONFIGURE_ARGS +=	-DBUILD_APPLETS=OFF

CONFIGURE_ARGS +=	-DBUILD_WITH_QT6=ON

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
