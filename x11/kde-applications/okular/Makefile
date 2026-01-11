COMMENT =	KDE document viewer
DISTNAME =	okular-${VERSION}
CATEGORIES =	textproc

HOMEPAGE =	https://okular.kde.org/

SHARED_LIBS +=	Okular6Core               2.1 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL KExiv2Qt6 KF6Archive KF6Bookmarks
WANTLIB += KF6BookmarksWidgets KF6ColorScheme KF6Completion KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6Crash
WANTLIB += KF6GuiAddons KF6I18n KF6IconThemes KF6ItemViews KF6JobWidgets
WANTLIB += KF6KIOCore KF6KIOGui KF6KIOWidgets KF6Parts KF6Pty
WANTLIB += KF6Purpose KF6PurposeWidgets KF6Service KF6SonnetUi
WANTLIB += KF6TextWidgets KF6ThreadWeaver KF6Wallet KF6WidgetsAddons
WANTLIB += KF6WindowSystem KF6XmlGui PlasmaActivities QMobipocket6
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Multimedia Qt6Network Qt6PrintSupport
WANTLIB += Qt6Qml Qt6Svg Qt6TextToSpeech Qt6Widgets Qt6Xml X11
WANTLIB += c djvulibre epub freetype m markdown phonon4qt6 poppler
WANTLIB += poppler-qt6 spectre tiff xkbcommon z

MODKDE_DESKTOP_FILE = yes
MODKDE_ICON_CACHE = yes
MODKDE_TRANSLATIONS = yes
MODKF5_I18N_CONFLICT = yes
MODKF5_L10N_CONFLICT = yes
MODKDE_DOCS = yes

BUILD_DEPENDS = net/libvncserver \
		devel/kf6/kirigami

RUN_DEPENDS =	misc/shared-mime-info \
		devel/kf6/kirigami \
		net/libvncserver

LIB_DEPENDS =	devel/kf6/karchive \
		devel/kf6/kbookmarks \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kcrash \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/kparts \
		devel/kf6/kpty \
		devel/kf6/kservice \
		devel/kf6/ktextwidgets \
		devel/kf6/kguiaddons \
		devel/kf6/kwallet \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		devel/kf6/purpose \
		devel/kf6/sonnet \
		devel/kf6/threadweaver \
		graphics/djvulibre \
		graphics/tiff \
		multimedia/phonon,qt6 \
		print/libspectre \
		print/poppler,-qt6 \
		textproc/discount \
		textproc/ebook-tools \
		x11/kde-applications/kf6-kdegraphics-mobipocket>=${VERSION} \
		x11/kde-applications/kf6-libkexiv2>=${VERSION} \
		x11/kde-plasma/plasma-activities \
		x11/qt6/qtdeclarative \
		x11/qt6/qtmultimedia \
		x11/qt6/qtspeech \
		x11/qt6/qtsvg \
		x11/xkbcommon

CONFIGURE_ARGS +=	-DBUILD_OKULARKIRIGAMI=OFF

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
