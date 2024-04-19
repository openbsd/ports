UNLINKED = kf6
COMMENT =	fully featured text editor component
DISTNAME =	ktexteditor-${VERSION}

SHARED_LIBS +=  KF6TextEditor             0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KF6Archive KF6AuthCore KF6Codecs
WANTLIB += KF6ColorScheme KF6Completion KF6ConfigCore KF6ConfigGui
WANTLIB += KF6ConfigWidgets KF6CoreAddons KF6GuiAddons KF6I18n
WANTLIB += KF6ItemViews KF6JobWidgets KF6KIOCore KF6KIOGui KF6KIOWidgets
WANTLIB += KF6Parts KF6Service KF6Solid KF6SonnetCore KF6SonnetUi
WANTLIB += KF6SyntaxHighlighting KF6TextWidgets KF6WidgetsAddons
WANTLIB += KF6XmlGui Qt6Core Qt6DBus Qt6Gui Qt6Multimedia Qt6Network
WANTLIB += Qt6PrintSupport Qt6Qml Qt6TextToSpeech Qt6Widgets Qt6Xml
WANTLIB += c editorconfig m

BUILD_DEPENDS =	archivers/gtar \
		devel/gettext,-tools

RUN_DEPENDS =	x11/dbus,-suid

# The following OPTIONAL packages have not been found:
# * EditorConfig
LIB_DEPENDS =	devel/kf6/karchive>=${MODKF6_VERSION} \
		devel/kf6/kauth>=${MODKF6_VERSION} \
		devel/kf6/kcodecs>=${MODKF6_VERSION} \
		devel/kf6/kcolorscheme>=${MODKF6_VERSION} \
		devel/kf6/kcompletion>=${MODKF6_VERSION} \
		devel/kf6/kconfig>=${MODKF6_VERSION} \
		devel/kf6/kconfigwidgets>=${MODKF6_VERSION} \
		devel/kf6/kcoreaddons>=${MODKF6_VERSION} \
		devel/kf6/kguiaddons>=${MODKF6_VERSION} \
		devel/kf6/ki18n>=${MODKF6_VERSION} \
		devel/kf6/kio>=${MODKF6_VERSION} \
		devel/kf6/kitemviews>=${MODKF6_VERSION} \
		devel/kf6/kjobwidgets>=${MODKF6_VERSION} \
		devel/kf6/kparts>=${MODKF6_VERSION} \
		devel/kf6/kservice>=${MODKF6_VERSION} \
		devel/kf6/ktextwidgets>=${MODKF6_VERSION} \
		devel/kf6/kwidgetsaddons>=${MODKF6_VERSION} \
		devel/kf6/kxmlgui>=${MODKF6_VERSION} \
		devel/kf6/solid>=${MODKF6_VERSION} \
		devel/kf6/sonnet>=${MODKF6_VERSION} \
		devel/kf6/syntax-highlighting>=${MODKF6_VERSION} \
		editors/editorconfig-core-c \
		x11/qt6/qtdeclarative \
		x11/qt6/qtmultimedia \
		x11/qt6/qtspeech

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}

post-extract:
	@ln -sf ${LOCALBASE}/bin/gtar ${WRKDIR}/bin/tar

.include <bsd.port.mk>
