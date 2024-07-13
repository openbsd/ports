USE_WXNEEDED =	Yes

COMMENT =	UML Modeller
DISTNAME =	umbrello-${VERSION}
CATEGORIES =	x11 productivity

HOMEPAGE =	https://umbrello.kde.org/

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Auth KF5AuthCore KF5Codecs
WANTLIB += KF5Completion KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5Crash KF5I18n KF5IconThemes KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOGui KF5KIOWidgets KF5Parts KF5Service
WANTLIB += KF5Solid KF5SonnetUi KF5SyntaxHighlighting KF5TextEditor
WANTLIB += KF5TextWidgets KF5WidgetsAddons KF5WindowSystem KF5XmlGui
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Svg Qt5Widgets Qt5Xml X11 c m xml2 xslt

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes
MODCLANG_COMPILER_LINKS = no

MODKDE_KF5 = yes

MODULES +=	lang/clang lang/python

RUN_DEPENDS =	math/graphviz

LIB_DEPENDS =	devel/kf5/ki18n \
		devel/kf5/karchive \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/kcrash \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/kparts \
		devel/kf5/kservice \
		devel/kf5/ktexteditor \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		devel/kf5/sonnet \
		devel/kf5/kconfigwidgets \
		devel/kf5/ktextwidgets \
		devel/kf5/syntax-highlighting \
		textproc/libxml \
		textproc/libxslt \
		x11/qt5/qtsvg \

CONFIGURE_ARGS =	-DBUILD_APIDOC=OFF \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON \
			-DClang_DIR=${LOCALBASE}/llvm${MODCLANG_VERSION}/lib/cmake/clang

TEST_IS_INTERACTIVE =	X11

post-install:
	${MODPY_COMPILEALL} ${PREFIX}/share/umbrello5/headings/

.include <bsd.port.mk>
