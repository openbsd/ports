DPB_PROPERTIES =	parallel

USE_WXNEEDED =	Yes

COMMENT =	KDE digital photo and video management utility

V =		8.3.0
PKGNAME =	digikam-${V}
DISTNAME =	digiKam-${V}
CATEGORIES =	graphics

HOMEPAGE =	https://www.digikam.org/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

SHARED_LIBS +=  digikamcore               7.0 # 8.0
SHARED_LIBS +=  digikamdatabase           8.0 # 8.0
SHARED_LIBS +=  digikamgui                6.0 # 8.0

# LGPL, GPL and many others
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE KF5Auth KF5AuthCore KF5CalendarCore
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5FileMetaData KF5I18n
WANTLIB += KF5IconThemes KF5JobWidgets KF5KIOCore KF5KIOGui KF5KIOWidgets
WANTLIB += KF5Notifications KF5NotifyConfig KF5Sane KF5Service
WANTLIB += KF5Solid KF5SonnetCore KF5SonnetUi KF5ThreadWeaver
WANTLIB += KF5WidgetsAddons KF5WindowSystem KF5XmlGui Magick++-6.Q16
WANTLIB += MagickCore-6.Q16 MagickWand-6.Q16 Qt5Concurrent Qt5Core
WANTLIB += Qt5DBus Qt5Gui Qt5Multimedia Qt5MultimediaWidgets Qt5Network
WANTLIB += Qt5NetworkAuth Qt5Positioning Qt5PrintSupport Qt5Qml
WANTLIB += Qt5QmlModels Qt5Quick Qt5Sql Qt5Svg Qt5WebChannel Qt5WebEngineCore
WANTLIB += Qt5WebEngineWidgets Qt5Widgets Qt5X11Extras Qt5Xml
WANTLIB += Qt5XmlPatterns SM X11 Xext avcodec avdevice avfilter
WANTLIB += avformat avutil c exiv2 expat exslt glib-2.0 gphoto2
WANTLIB += gphoto2_port heif jasper jpeg lcms2 lensfun m opencv_calib3d
WANTLIB += opencv_core opencv_dnn opencv_features2d opencv_flann
WANTLIB += opencv_imgcodecs opencv_imgproc opencv_ml opencv_objdetect
WANTLIB += png swresample swscale tiff usb-1.0 x265 xml2 xslt
WANTLIB += z

SITES =		${SITE_KDE:=stable/digikam/${V}/}

FLAVORS =	mysql
FLAVOR ?=

MODULES =	devel/kf5

BUILD_DEPENDS =	devel/bison \
		devel/boost \
		devel/gettext,-tools \
		devel/git \
		devel/kf5/kdoctools \
		math/eigen3 \
		misc/shared-desktop-ontologies \
		x11/qt5/qtwebview

RUN_DEPENDS =	databases/sqlite3 \
		devel/desktop-file-utils \
		devel/kf5/kdoctools \
		x11/gtk+4,-guic \
		x11/qt5/qtwebview

LIB_DEPENDS =	devel/glib2 \
		devel/kf5/kauth \
		devel/kf5/kcalendarcore \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kfilemetadata \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kjobwidgets \
		devel/kf5/knotifications \
		devel/kf5/knotifyconfig \
		devel/kf5/kservice \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		devel/kf5/sonnet \
		devel/kf5/threadweaver \
		devel/libusb1 \
		graphics/ImageMagick \
		graphics/exiv2 \
		graphics/ffmpeg \
		graphics/jasper \
		graphics/jpeg \
		graphics/lcms2 \
		graphics/lensfun \
		graphics/libgphoto2 \
		graphics/opencv \
		graphics/png \
		graphics/tiff \
		multimedia/libheif \
		multimedia/x265 \
		textproc/libxml \
		textproc/libxslt \
		x11/kde-applications/libksane \
		x11/qt5/qtdeclarative \
		x11/qt5/qtlocation \
		x11/qt5/qtmultimedia \
		x11/qt5/qtnetworkauth \
		x11/qt5/qtsvg \
		x11/qt5/qtwebchannel \
		x11/qt5/qtwebengine \
		x11/qt5/qtx11extras \
		x11/qt5/qtxmlpatterns

WRKDIST =		${WRKDIR}/${PKGNAME}

CONFIGURE_ARGS +=	-DENABLE_KFILEMETADATASUPPORT=ON \
			-DENABLE_INTERNALMYSQL=OFF \
			-DENABLE_MEDIAPLAYER=ON

# Some unit tests require data from the external "Digikam Test Data" git
# repository
CONFIGURE_ARGS +=	-DBUILD_TESTING=OFF
CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Git=On

.if ${FLAVOR:Mmysql}
BUILD_DEPENDS +=	databases/mariadb
RUN_DEPENDS +=		databases/mariadb
CONFIGURE_ARGS +=	-DENABLE_MYSQLSUPPORT=ON
.else
CONFIGURE_ARGS +=	-DENABLE_MYSQLSUPPORT=OFF
.endif

# Re-enable it when digikam switch to KDE6
CONFIGURE_ARGS +=	-DENABLE_AKONADICONTACTSUPPORT=OFF

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON

# Some unit tests require data from the external "Digikam Test Data" git
# repository
CONFIGURE_ARGS +=	-DBUILD_TESTING=OFF

# XXX W^X binary outside wxallowed
TEST_IS_INTERACTIVE =	X11

MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib

.include <bsd.port.mk>

.if ${USE_CCACHE:L} == "yes"
CONFIGURE_ARGS +=	-DBUILD_WITH_CCACHE=0N
.endif
