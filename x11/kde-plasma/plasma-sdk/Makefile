COMMENT =	applications useful for Plasma development
DISTNAME =	plasma-sdk-${VERSION}
REVISION =	0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6Crash KF6DBusAddons KF6GuiAddons KF6I18n KF6I18nQml
WANTLIB += KF6IconThemes KF6JobWidgets KF6KIOCore KF6KIOGui KF6KIOWidgets
WANTLIB += KF6Package KF6Parts KF6Service KF6SyntaxHighlighting
WANTLIB += KF6TextEditor KF6WidgetsAddons KF6WindowSystem KF6XmlGui
WANTLIB += Plasma Plasma5Support PlasmaQuick Qt6Core Qt6DBus Qt6Gui
WANTLIB += Qt6Network Qt6OpenGL Qt6Qml Qt6Quick Qt6Widgets Qt6Xml
WANTLIB += X11 c m

MODKDE_TRANSLATIONS =	Yes

BUILD_DEPENDS =	devel/kf6/kirigami \
		devel/kf6/kitemmodels

RUN_DEPENDS =	devel/kf6/kirigami \
		devel/kf6/kitemmodels \
		devel/desktop-file-utils \
		x11/gtk+4,-guic

LIB_DEPENDS +=	devel/kf6/karchive \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/kdbusaddons \
		devel/kf6/kguiaddons \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kjobwidgets \
		devel/kf6/kpackage \
		devel/kf6/kparts \
		devel/kf6/kservice \
		devel/kf6/ktexteditor \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		devel/kf6/syntax-highlighting \
		x11/kde-plasma/libplasma>=${VERSION} \
		x11/kde-plasma/plasma5support>=${VERSION} \
		x11/qt6/qtdeclarative

CONFIGURE_ARGS = \
	-DCMAKE_DISABLE_FIND_PACKAGE_KF5NetworkManagerQt=Yes

MODCMAKE_LDFLAGS =	-L${X11BASE}/lib -L${LOCALBASE}/lib

CFLAGS +=		-I${LOCALBASE}/include/
CXXFLAGS +=		-I${LOCALBASE}/include/

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
