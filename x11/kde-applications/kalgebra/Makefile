USE_WXNEEDED =	Yes

COMMENT =	scientific calculator for KDE
DISTNAME =	kalgebra-${VERSION}
CATEGORIES =	education

WANTLIB += ${COMPILER_LIBCXX} Analitza AnalitzaGui AnalitzaPlot
WANTLIB += AnalitzaWidgets GL KF6ColorScheme KF6ConfigCore KF6ConfigGui
WANTLIB += KF6ConfigWidgets KF6CoreAddons KF6I18n KF6KIOCore KF6WidgetsAddons
WANTLIB += KF6XmlGui Qt6Core Qt6DBus Qt6Gui Qt6Network Qt6OpenGL
WANTLIB += Qt6OpenGLWidgets Qt6Positioning Qt6PrintSupport Qt6Qml
WANTLIB += Qt6QmlModels Qt6Quick Qt6WebChannel Qt6WebEngineCore
WANTLIB += Qt6WebEngineWidgets Qt6Widgets Qt6Xml c ereadline m

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes

BUILD_DEPENDS =	devel/kf6/kbookmarks \
		devel/kf6/kirigami \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/solid \
		x11/kde-plasma/libplasma

RUN_DEPENDS =	devel/kf6/kbookmarks \
		devel/kf6/kirigami \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/solid \
		misc/shared-mime-info

LIB_DEPENDS =	devel/kf6/kcolorscheme \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets\
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kxmlgui \
		devel/readline \
		x11/kde-applications/analitza>=${MODKDE_VERSION} \
		x11/qt6/qtdeclarative \
		x11/qt6/qtpositioning \
		x11/qt6/qtwebchannel \
		x11/qt6/qtwebengine

MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib

CONFIGURE_ARGS +=	-DREADLINE_INCLUDE_DIR=${LOCALBASE}/include/ereadline \
			-DREADLINE_LIBRARY_DIR=${LOCALBASE}/lib \
			-DREADLINE_LIBRARY=ereadline \
			-DCURSES_LIBRARIES=ncurses

.include <bsd.port.mk>
