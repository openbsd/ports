COMMENT =	extra functionality for kioslaves
DISTNAME =	kio-extras-${VERSION}
CATEGORIES =	productivity net

SHARED_LIBS +=  kioarchive                3.0 # 5.97
SHARED_LIBS +=  molletnetwork5            3.0 # 18.08

WANTLIB += ${COMPILER_LIBCXX} Iex-3_1 IlmThread-3_1 Imath-3_1
WANTLIB += KF5Activities KF5ActivitiesStats KF5Archive KF5Auth
WANTLIB += KF5AuthCore KF5Bookmarks KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5DBusAddons
WANTLIB += KF5DNSSD KF5GuiAddons KF5I18n KF5ItemViews KF5JobWidgets
WANTLIB += KF5KIOCore KF5KIOFileWidgets KF5KIOGui KF5KIOWidgets
WANTLIB += KF5Service KF5Solid KF5SyntaxHighlighting KF5WidgetsAddons
WANTLIB += KF5WindowSystem KF5XmlGui OpenEXR-3_1 Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Sql Qt5Svg Qt5Widgets
WANTLIB += Qt5Xml X11 Xcursor c kdsoap m mtp phonon4qt5 phonon4qt5experimental
WANTLIB += smbclient ssh tag util z

MODKDE5_TRANSLATIONS = yes
MODKDE5_DOCS = yes

BUILD_DEPENDS =	devel/gperf \
		devel/kf5/kiconthemes \
		devel/kf5/kpty

RUN_DEPENDS =	devel/gperf \
		devel/kf5/kiconthemes \
		devel/kf5/kpty \
		misc/shared-mime-info

LIB_DEPENDS =	audio/taglib \
		devel/kf5/kactivities \
		devel/kf5/kactivities-stats \
		devel/kf5/karchive \
		devel/kf5/kauth \
		devel/kf5/kbookmarks \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kdbusaddons \
		devel/kf5/kdnssd \
		devel/kf5/kguiaddons \
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kitemviews \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		devel/kf5/syntax-highlighting \
		devel/libmtp \
		graphics/openexr \
		security/libssh \
		net/samba \
		net/kdsoap \
		x11/qt5/qtsvg \
		multimedia/phonon

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}
TEST_DEPENDS =		${BUILD_PKGPATH}

.include <bsd.port.mk>
