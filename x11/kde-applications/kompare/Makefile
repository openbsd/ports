COMMENT =	file compare utility for KDE
DISTNAME =	kompare-${VERSION}
CATEGORIES =	textproc devel

SHARED_LIBS +=  komparedialogpages  3.0 # 0.0
SHARED_LIBS +=  kompareinterface    3.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5I18n KF5IconThemes KF5JobWidgets KF5KIOCore KF5KIOGui
WANTLIB += KF5KIOWidgets KF5Parts KF5Service KF5Solid KF5SonnetUi
WANTLIB += KF5SyntaxHighlighting KF5TextEditor KF5TextWidgets
WANTLIB += KF5WidgetsAddons KF5WindowSystem KF5XmlGui Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport Qt5Widgets
WANTLIB += Qt5Xml X11 c komparediff2 m

MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes
MODKDE_DESKTOP_FILE = yes

MODKDE_KF5 =	yes

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/kparts \
		devel/kf5/kservice \
		devel/kf5/ktexteditor \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		devel/kf5/sonnet \
		devel/kf5/syntax-highlighting \
		x11/kde-applications/libkomparediff2>=${MODKDE_VERSION}

# XXX Checkn libkomparediff2

SUBST_VARS +=	LIBkompareinterface_VERSION \
		LIBkomparedialogpages_VERSION

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/interfaces/CMakeLists.txt \
		${WRKSRC}/src/dialogpages/CMakeLists.txt

.include <bsd.port.mk>
