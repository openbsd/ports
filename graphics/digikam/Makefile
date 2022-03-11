# $OpenBSD: Makefile,v 1.77 2022/03/11 10:44:47 sthen Exp $

USE_WXNEEDED =	Yes
DPB_PROPERTIES = parallel

COMMENT =	KDE digital photo and video management utility

V =		7.5.0
PKGNAME =	digikam-${V}
DISTNAME =	digiKam-${V}
CATEGORIES =	graphics
REVISION =	0

HOMEPAGE =	https://www.digikam.org/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

SHARED_LIBS +=  digikamcore               4.0 # 7.3
SHARED_LIBS +=  digikamdatabase           5.0 # 7.3
SHARED_LIBS +=  digikamgui                4.0 # 7.3

# LGPL, GPL and many others
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLU Grantlee_Templates ICE KF5AkonadiContact
WANTLIB += KF5AkonadiCore KF5AkonadiWidgets KF5Auth KF5AuthCore
WANTLIB += KF5CalendarCore KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5Contacts KF5CoreAddons
WANTLIB += KF5FileMetaData KF5GrantleeTheme KF5I18n KF5IconThemes
WANTLIB += KF5ItemModels KF5JobWidgets KF5KIOCore KF5KIOGui KF5KIOWidgets
WANTLIB += KF5Notifications KF5NotifyConfig KF5Sane KF5Service
WANTLIB += KF5Solid KF5ThreadWeaver KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Magick++-6.Q16 MagickCore-6.Q16 MagickWand-6.Q16
WANTLIB += Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5OpenGL
WANTLIB += Qt5Positioning Qt5PrintSupport Qt5Qml Qt5QmlModels
WANTLIB += Qt5Quick Qt5Sql Qt5WebChannel Qt5WebEngineCore Qt5WebEngineWidgets
WANTLIB += Qt5Widgets Qt5X11Extras Qt5Xml Qt5XmlPatterns SM X11
WANTLIB += Xext avcodec avdevice avfilter avformat avutil c exiv2
WANTLIB += expat exslt glib-2.0 gphoto2 gphoto2_port intl jasper
WANTLIB += jpeg lcms2 lensfun lqr-1 m marblewidget-qt5 opencv_calib3d
WANTLIB += opencv_core opencv_dnn opencv_features2d opencv_flann
WANTLIB += opencv_imgcodecs opencv_imgproc opencv_ml opencv_objdetect
WANTLIB += png swscale tiff usb-1.0 x265 xml2 xslt z

MASTER_SITES =	${MASTER_SITE_KDE:=stable/digikam/${V}/}

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
		multimedia/qtav

RUN_DEPENDS =	databases/sqlite3 \
		devel/desktop-file-utils \
		devel/kf5/kdoctools \
		multimedia/qtav \
		x11/gtk+3,-guic

LIB_DEPENDS =	devel/kf5/kauth \
		devel/kf5/kcalendarcore \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcontacts \
		devel/kf5/kcoreaddons \
		devel/kf5/kfilemetadata \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kitemmodels \
		devel/kf5/kjobwidgets \
		devel/kf5/knotifyconfig \
		devel/kf5/kservice \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		devel/kf5/threadweaver \
		graphics/ImageMagick \
		graphics/exiv2 \
		graphics/ffmpeg \
		graphics/jasper \
		graphics/jpeg \
		graphics/lcms2 \
		graphics/lensfun \
		graphics/libgphoto2 \
		graphics/liblqr \
		graphics/opencv \
		graphics/png \
		graphics/tiff \
		multimedia/x265 \
		x11/kde-applications/akonadi \
		x11/kde-applications/akonadi-contacts \
		x11/kde-applications/libksane \
		x11/kde-applications/marble \
		x11/kde-applications/grantleetheme \
		x11/qt5/qtdeclarative \
		x11/qt5/qtwebchannel \
		x11/qt5/qtwebengine \
		x11/qt5/qtx11extras \
		x11/qt5/qtxmlpatterns

WRKDIST =		${WRKDIR}/${PKGNAME}

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON \
			-DENABLE_QWEBENGINE=ON

.if ${FLAVOR:Mmysql}
BUILD_DEPENDS +=	databases/mariadb
RUN_DEPENDS +=		databases/mariadb
CONFIGURE_ARGS +=	-DENABLE_MYSQLSUPPORT=ON
.endif

# XXX W^X binary outside wxallowed
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
