DPB_PROPERTIES =	parallel

USE_WXNEEDED =	Yes

COMMENT =	KDE digital photo and video management utility

V =		8.4.0
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

WANTLIB += ${COMPILER_LIBCXX} GL GLU ICE KF6CalendarCore KF6ColorScheme
WANTLIB += KF6Completion KF6ConfigCore KF6ConfigGui KF6ConfigWidgets
WANTLIB += KF6CoreAddons KF6FileMetaData KF6I18n KF6IconThemes
WANTLIB += KF6IconWidgets KF6JobWidgets KF6KIOCore KF6KIOGui KF6KIOWidgets
WANTLIB += KF6Notifications KF6NotifyConfig KF6Service KF6Solid
WANTLIB += KF6SonnetCore KF6SonnetUi KF6ThreadWeaver KF6WidgetsAddons
WANTLIB += KF6WindowSystem KF6XmlGui Magick++-6.Q16 MagickCore-6.Q16
WANTLIB += MagickWand-6.Q16 Qt6Concurrent Qt6Core Qt6DBus Qt6Gui
WANTLIB += Qt6Multimedia Qt6MultimediaWidgets Qt6Network Qt6NetworkAuth
WANTLIB += Qt6OpenGL Qt6OpenGLWidgets Qt6Positioning Qt6PrintSupport
WANTLIB += Qt6Qml Qt6QmlModels Qt6Quick Qt6Sql Qt6StateMachine
WANTLIB += Qt6Svg Qt6SvgWidgets Qt6WebChannel Qt6WebEngineCore
WANTLIB += Qt6WebEngineWidgets Qt6Widgets Qt6Xml SM X11 Xext avcodec
WANTLIB += avdevice avfilter avformat avutil c exiv2 expat exslt
WANTLIB += glib-2.0 gphoto2 gphoto2_port heif jasper jpeg jxl
WANTLIB += jxl_threads lcms2 lensfun m opencv_calib3d opencv_core
WANTLIB += opencv_dnn opencv_features2d opencv_flann opencv_imgcodecs
WANTLIB += opencv_imgproc opencv_ml opencv_objdetect png swresample
WANTLIB += swscale tiff usb-1.0 x265 xml2 xslt z

SITES =		${SITE_KDE:=stable/digikam/${V}/}
EXTRACT_SUFX ?=		.tar.xz

FLAVORS =	mysql
FLAVOR ?=

MODULES =	devel/kf6

BUILD_DEPENDS =	devel/bison \
		devel/boost \
		devel/gettext,-tools \
		devel/git \
		devel/kf6/kdoctools \
		math/eigen3 \
		misc/shared-desktop-ontologies \
		x11/kde-applications/kf6-ksanecore \
		x11/qt6/qtwebview

RUN_DEPENDS =	databases/sqlite3 \
		devel/desktop-file-utils \
		devel/kf6/kdoctools \
		x11/gtk+4,-guic \
		x11/qt6/qtwebview

# Depends on exiftool
RUN_DEPENDS +=	graphics/p5-Image-ExifTool

LIB_DEPENDS =	devel/glib2 \
		devel/kf6/kcalendarcore \
		devel/kf6/kcompletion \
		devel/kf6/kconfig \
		devel/kf6/kconfigwidgets \
		devel/kf6/kcoreaddons \
		devel/kf6/kfilemetadata \
		devel/kf6/ki18n \
		devel/kf6/kiconthemes \
		devel/kf6/kio \
		devel/kf6/kjobwidgets \
		devel/kf6/knotifications \
		devel/kf6/knotifyconfig \
		devel/kf6/kservice \
		devel/kf6/kwidgetsaddons \
		devel/kf6/kwindowsystem \
		devel/kf6/kxmlgui \
		devel/kf6/solid \
		devel/kf6/sonnet \
		devel/kf6/threadweaver \
		devel/libusb1 \
		graphics/ImageMagick \
		graphics/exiv2 \
		graphics/ffmpeg \
		graphics/jasper \
		graphics/jpeg \
		graphics/lcms2 \
		graphics/lensfun \
		graphics/libjxl \
		graphics/libgphoto2 \
		graphics/opencv \
		graphics/png \
		graphics/tiff \
		multimedia/libheif \
		multimedia/x265 \
		textproc/libxml \
		textproc/libxslt \
		x11/qt6/qtdeclarative \
		x11/qt6/qtmultimedia \
		x11/qt6/qtnetworkauth \
		x11/qt6/qtsvg \
		x11/qt6/qtscxml \
		x11/qt6/qtwebchannel \
		x11/qt6/qtwebengine

WRKDIST =		${WRKDIR}/${PKGNAME}

CONFIGURE_ARGS +=	-DBUILD_WITH_QT6=ON

CONFIGURE_ARGS +=	-DENABLE_KFILEMETADATASUPPORT=ON \
			-DENABLE_INTERNALMYSQL=OFF \
			-DENABLE_MEDIAPLAYER=ON

# Some unit tests require data from the external "Digikam Test Data" git
# repository
CONFIGURE_ARGS +=	-DBUILD_TESTING=OFF
CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_VAAPI=On

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
