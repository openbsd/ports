# $OpenBSD: Makefile,v 1.60 2019/09/27 06:12:58 rsadowski Exp $

COMMENT =	KDE digital photo and video management utility

V =		6.2.0
DISTNAME =	digikam-${V}
REVISION =	1

CATEGORIES =	graphics

HOMEPAGE =	https://www.digikam.org/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

SHARED_LIBS +=  digikamcore               1.0 # 5.9
SHARED_LIBS +=  digikamdatabase           1.0 # 5.9
SHARED_LIBS +=  digikamgui                1.0 # 5.9

# LGPL, GPL and many others
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLU ICE KF5Auth KF5CalendarCore
WANTLIB += KF5Codecs KF5Completion KF5ConfigCore KF5ConfigGui
WANTLIB += KF5ConfigWidgets KF5CoreAddons KF5FileMetaData KF5I18n
WANTLIB += KF5IconThemes KF5JobWidgets KF5KIOCore KF5KIOWidgets
WANTLIB += KF5Notifications KF5NotifyConfig KF5Sane KF5Service
WANTLIB += KF5Solid KF5ThreadWeaver KF5WidgetsAddons KF5WindowSystem
WANTLIB += KF5XmlGui Magick++-6.Q16 MagickCore-6.Q16 Qt5Concurrent
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5OpenGL Qt5PrintSupport
WANTLIB += Qt5Sql Qt5WebKit Qt5WebKitWidgets Qt5Widgets Qt5X11Extras
WANTLIB += Qt5Xml Qt5XmlPatterns SM X11 Xext avcodec avfilter
WANTLIB += avformat avutil c exiv2 expat exslt glib-2.0 gphoto2
WANTLIB += gphoto2_port intl jasper jpeg lcms2 lensfun lqr-1 m
WANTLIB += marblewidget-qt5 opencv_calib3d opencv_core opencv_features2d
WANTLIB += opencv_flann opencv_imgcodecs opencv_imgproc opencv_objdetect
WANTLIB += png swscale tiff usb-1.0 xml2 xslt z

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
		graphics/ImageMagick \
		x11/kde-applications/kcalcore \
		x11/kde-applications/libksane \
		x11/kde-applications/marble \
		x11/qt5/qtwebkit \
		x11/qt5/qtx11extras \
		x11/qt5/qtxmlpatterns

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON

.if ${FLAVOR:Mmysql}
LIB_DEPENDS +=		databases/mariadb
CONFIGURE_ARGS +=	-DENABLE_MYSQLSUPPORT=ON
.endif

# XXX W^X binary outside wxallowed
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
