COMMENT =	fully featured text editor component
DISTNAME =	ktexteditor-${VERSION}

SHARED_LIBS =	KF5TextEditor		21.0

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Auth KF5AuthCore KF5Codecs
WANTLIB += KF5Completion KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5GuiAddons KF5I18n KF5ItemViews KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOGui KF5KIOWidgets KF5Parts KF5Service
WANTLIB += KF5Solid KF5SonnetCore KF5SonnetUi KF5SyntaxHighlighting
WANTLIB += KF5TextWidgets KF5WidgetsAddons KF5WindowSystem KF5XmlGui
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Qml Qt5Widgets Qt5Xml X11 c m

BUILD_DEPENDS =	archivers/gtar \
		devel/gettext,-tools \
		x11/qt5/qtscript \
		x11/qt5/qtxmlpatterns

RUN_DEPENDS =	x11/dbus,-suid \
		x11/qt5/qtscript \
		x11/qt5/qtxmlpatterns

# The following OPTIONAL packages have not been found:
# * EditorConfig
LIB_DEPENDS =	devel/kf5/karchive>=${MODKF5_VERSION} \
		devel/kf5/kauth>=${MODKF5_VERSION} \
		devel/kf5/kcodecs>=${MODKF5_VERSION} \
		devel/kf5/kcompletion>=${MODKF5_VERSION} \
		devel/kf5/kconfig>=${MODKF5_VERSION} \
		devel/kf5/kconfigwidgets>=${MODKF5_VERSION} \
		devel/kf5/kguiaddons>=${MODKF5_VERSION} \
		devel/kf5/ki18n>=${MODKF5_VERSION} \
		devel/kf5/kio>=${MODKF5_VERSION} \
		devel/kf5/kjobwidgets>=${MODKF5_VERSION} \
		devel/kf5/kparts>=${MODKF5_VERSION} \
		devel/kf5/ktextwidgets>=${MODKF5_VERSION} \
		devel/kf5/kwidgetsaddons>=${MODKF5_VERSION} \
		devel/kf5/kwindowsystem>=${MODKF5_VERSION} \
		devel/kf5/kxmlgui>=${MODKF5_VERSION} \
		devel/kf5/sonnet>=${MODKF5_VERSION} \
		devel/kf5/syntax-highlighting>=${MODKF5_VERSION}

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
