COMMENT =	extra functionality for kioslaves
DISTNAME =	kio-extras-${VERSION}
PKGNAME =	kf6-kio-extras-${VERSION}

CATEGORIES =	productivity net

SHARED_LIBS +=	kioarchive6               0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Iex-3_2 IlmThread-3_2 Imath-3_1
WANTLIB += KDSoapWSDiscoveryClient KExiv2Qt6 KF6Archive KF6Bookmarks
WANTLIB += KF6Codecs KF6ColorScheme KF6Completion KF6ConfigCore
WANTLIB += KF6ConfigGui KF6ConfigWidgets KF6CoreAddons KF6DBusAddons
WANTLIB += KF6DNSSD KF6I18n KF6ItemViews KF6JobWidgets KF6KCMUtils
WANTLIB += KF6KCMUtilsCore KF6KCMUtilsQuick KF6KIOCore KF6KIOFileWidgets
WANTLIB += KF6KIOGui KF6KIOWidgets KF6Service KF6Solid KF6SonnetUi
WANTLIB += KF6SyntaxHighlighting KF6TextWidgets KF6WidgetsAddons
WANTLIB += OpenEXR-3_2 OpenEXRCore-3_2 PlasmaActivities PlasmaActivitiesStats
WANTLIB += QCoro6Core Qt6Core Qt6Core5Compat Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6Qml Qt6Sql Qt6Svg Qt6Widgets Qt6Xml Xcursor c kdsoap-qt6
WANTLIB += m mtp phonon4qt6 phonon4qt6experimental smbclient ssh
WANTLIB += tag util

MODKDE_TRANSLATIONS = yes
MODKDE_DOCS = yes

BUILD_DEPENDS =	devel/gperf \
		devel/kf6/kiconthemes \
		devel/kf6/kpty

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/gperf \
		devel/kf6/kiconthemes \
		devel/kf6/kpty \
		misc/shared-mime-info

LIB_DEPENDS =	audio/taglib \
		devel/kf6/karchive \
		devel/kf6/kbookmarks \
		devel/kf6/kcmutils \
		devel/kf6/kcodecs \
		devel/kf6/kcolorscheme \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kdbusaddons \
		devel/kf6/kdnssd \
		devel/kf6/ki18n \
		devel/kf6/kio \
		devel/kf6/kitemviews \
		devel/kf6/kjobwidgets \
		devel/kf6/kservice \
		devel/kf6/ktextwidgets \
		devel/kf6/kwidgetsaddons \
		devel/kf6/solid \
		devel/kf6/sonnet \
		devel/kf6/syntax-highlighting \
		devel/libmtp \
		devel/qcoro,qt6 \
		graphics/openexr \
		math/imath \
		multimedia/phonon,qt6 \
		net/kdsoap,qt6 \
		net/kdsoap-ws-discovery-client \
		net/samba \
		security/libssh \
		x11/kde-applications/kf6-libkexiv2>=${MODKDE_GEAR_VERSION} \
		x11/kde-plasma/plasma-activities \
		x11/kde-plasma/plasma-activities-stats \
		x11/qt6/qt5compat \
		x11/qt6/qtdeclarative \
		x11/qt6/qtsvg

TEST_IS_INTERACTIVE =	X11
PORTHOME =		${WRKDIR}
TEST_DEPENDS =		${BUILD_PKGPATH}

.include <bsd.port.mk>
