COMMENT =	file compare utility for KDE
DISTNAME =	kompare-${VERSION}
CATEGORIES =	textproc devel

SHARED_LIBS +=  komparedialogpages  4.0 # 0.0
SHARED_LIBS +=  kompareinterface    4.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Codecs KF6ColorScheme KF6Completion
WANTLIB += KF6ConfigCore KF6ConfigGui KF6ConfigWidgets KF6CoreAddons
WANTLIB += KF6I18n KF6IconThemes KF6JobWidgets KF6KIOCore KF6KIOGui
WANTLIB += KF6KIOWidgets KF6Parts KF6Service KF6Solid KF6SyntaxHighlighting
WANTLIB += KF6TextEditor KF6WidgetsAddons KF6XmlGui Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Network Qt6PrintSupport Qt6Widgets Qt6Xml
WANTLIB += c komparediff2 m

MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes
MODKDE_DESKTOP_FILE = yes

LIB_DEPENDS =	devel/kf6/kauth \
		devel/kf6/kcodecs \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kjobwidgets \
		devel/kf6/kparts \
		devel/kf6/kservice \
		devel/kf6/ktexteditor \
		devel/kf6/ktextwidgets \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		devel/kf6/sonnet \
		devel/kf6/syntax-highlighting \
		devel/kf6/kcolorscheme \
		x11/kde-applications/libkomparediff2>=${MODKDE_GEAR_VERSION}

SUBST_VARS +=	LIBkompareinterface_VERSION \
		LIBkomparedialogpages_VERSION

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/interfaces/CMakeLists.txt \
		${WRKSRC}/src/dialogpages/CMakeLists.txt

.include <bsd.port.mk>
