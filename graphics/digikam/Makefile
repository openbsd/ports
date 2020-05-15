# $OpenBSD: Makefile,v 1.63 2020/05/15 15:54:25 rsadowski Exp $

COMMENT =	KDE digital photo and video management utility

V =		6.4.0
DISTNAME =	digikam-${V}
CATEGORIES =	graphics

HOMEPAGE =	https://www.digikam.org/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

SHARED_LIBS +=  digikamcore               1.0 # 5.9
SHARED_LIBS +=  digikamdatabase           1.0 # 5.9
SHARED_LIBS +=  digikamgui                1.0 # 5.9

# LGPL, GPL and many others
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLU ICE KF5Auth KF5AuthCore KF5Codecs
WANTLIB += KF5Completion KF5ConfigCore KF5ConfigGui KF5ConfigWidgets
WANTLIB += KF5CoreAddons KF5FileMetaData KF5I18n KF5IconThemes
WANTLIB += KF5JobWidgets KF5KIOCore KF5KIOWidgets KF5Notifications
WANTLIB += KF5NotifyConfig KF5Sane KF5Service KF5Solid KF5ThreadWeaver
WANTLIB += KF5WidgetsAddons KF5WindowSystem KF5XmlGui Magick++-6.Q16
WANTLIB += MagickCore-6.Q16 Qt5Concurrent Qt5Core Qt5DBus Qt5Gui
WANTLIB += Qt5Network Qt5OpenGL Qt5PrintSupport Qt5Sql Qt5WebKit
WANTLIB += Qt5WebKitWidgets Qt5Widgets Qt5X11Extras Qt5Xml Qt5XmlPatterns
WANTLIB += SM X11 Xext avcodec avfilter avformat avutil c exiv2
WANTLIB += expat exslt glib-2.0 gphoto2 gphoto2_port intl jasper
WANTLIB += jpeg lcms2 lensfun lqr-1 m marblewidget-qt5 opencv_calib3d
WANTLIB += opencv_core opencv_features2d opencv_flann opencv_imgcodecs
WANTLIB += opencv_imgproc opencv_objdetect png swscale tiff usb-1.0
WANTLIB += x265 xml2 xslt z

MASTER_SITES =	${MASTER_SITE_KDE:=stable/digikam/${V}/}

FLAVORS =	mysql
FLAVOR ?=

MODULES =	devel/kf5

BUILD_DEPENDS =	devel/bison \
		devel/boost \
		devel/gettext,-tools \
		devel/git \
		devel/kf5/kdoctools \
		multimedia/qtav \
		math/eigen3 \
		misc/shared-desktop-ontologies

RUN_DEPENDS =	databases/sqlite \
		devel/desktop-file-utils \
		devel/kf5/kdoctools \
		multimedia/qtav \
		x11/gtk+3,-guic

# TODO
# - libakonadicontact
# - libkvkontakte
LIB_DEPENDS +=	devel/kf5/kauth \
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
		devel/kf5/knotifyconfig \
		devel/kf5/kservice \
		devel/kf5/kwindowsystem \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		devel/kf5/threadweaver \
		graphics/ImageMagick \
		graphics/exiv2 \
		graphics/jasper \
		graphics/jpeg \
		graphics/lcms2 \
		graphics/lensfun \
		graphics/libgphoto2 \
		graphics/liblqr \
		graphics/opencv>=3 \
		graphics/png \
		graphics/tiff \
		multimedia/x265 \
		x11/kde-applications/libksane \
		x11/kde-applications/marble \
		x11/qt5/qtwebkit \
		x11/qt5/qtx11extras \
		x11/qt5/qtxmlpatterns

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON

.if ${FLAVOR:Mmysql}
BUILD_DEPENDS +=	databases/mariadb
RUN_DEPENDS +=		databases/mariadb
CONFIGURE_ARGS +=	-DENABLE_MYSQLSUPPORT=ON
.endif

# XXX W^X binary outside wxallowed
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
