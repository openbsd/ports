COMMENT =	data visualization and analysis software

DISTNAME =	labplot-2.10.1
REVISION =	1

CATEGORIES =	math x11

HOMEPAGE =	https://labplot.kde.org/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# luajit (via cantorlibs)
USE_NOBTCFI =	Yes

# LGPL, GPL and many others
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5Attica KF5Auth KF5AuthCore
WANTLIB += KF5Bookmarks KF5Codecs KF5Completion KF5ConfigCore
WANTLIB += KF5ConfigGui KF5ConfigWidgets KF5CoreAddons KF5Crash
WANTLIB += KF5I18n KF5IconThemes KF5ItemViews KF5JobWidgets KF5KIOCore
WANTLIB += KF5KIOFileWidgets KF5KIOGui KF5KIOWidgets KF5NewStuff
WANTLIB += KF5NewStuffCore KF5Parts KF5Service KF5Solid KF5SonnetUi
WANTLIB += KF5SyntaxHighlighting KF5TextWidgets KF5WidgetsAddons
WANTLIB += KF5WindowSystem KF5XmlGui
WANTLIB += QXlsxQt5 Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5PrintSupport Qt5SerialPort Qt5Sql Qt5Svg Qt5Widgets
WANTLIB += Qt5Xml X11 c cantorlibs cerf cfitsio fftw3 gsl gslcblas
WANTLIB += hdf5 lz4 m markdown matio netcdf poppler poppler-qt5
WANTLIB += spectre z

SITES =		https://download.kde.org/stable/labplot/
EXTRACT_SUFX =	.tar.xz

MODULES =	devel/kf5

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/gettext,-tools \
		misc/shared-mime-info \
		x11/gtk+4,-guic

BUILD_DEPENDS =	devel/bison \
		devel/desktop-file-utils \
		devel/gettext,-tools \
		devel/kf5/kdoctools

LIB_DEPENDS =	archivers/lz4 \
		devel/gsl \
		devel/kf5/karchive \
		devel/kf5/kauth \
		devel/kf5/kcodecs \
		devel/kf5/kcompletion \
		devel/kf5/kconfig \
		devel/kf5/kconfigwidgets \
		devel/kf5/kcoreaddons \
		devel/kf5/kcrash \
		devel/kf5/ki18n \
		devel/kf5/kiconthemes \
		devel/kf5/kio \
		devel/kf5/kitemviews \
		devel/kf5/kjobwidgets \
		devel/kf5/knewstuff \
		devel/kf5/kparts \
		devel/kf5/kservice \
		devel/kf5/ktextwidgets \
		devel/kf5/kwidgetsaddons \
		devel/kf5/kxmlgui \
		devel/kf5/solid \
		devel/kf5/sonnet \
		math/cfitsio \
		math/fftw3 \
		print/poppler,-qt5 \
		textproc/discount \
		x11/qt5/qtserialport \
		x11/qt5/qtsvg

# OPTIONAL packages
LIB_DEPENDS +=	devel/kf5/syntax-highlighting \
		math/hdf5 \
		math/libcerf \
		math/matio \
		math/netcdf \
		textproc/qxlsx \
		x11/kde-applications/cantor

#-- The following OPTIONAL packages have not been found:
#* LibOrigin, A library for reading OriginLab project files,
#  <https://sourceforge.net/projects/liborigin>
#* Qt5Mqtt, Qt Module to implement MQTT protocol version 3.1 and 3.1.1,
# <https://github.com/qt/qtmqtt>
#* ReadStat, A command-line tool and library for reading files from
# popular stats packages, <https://github.com/WizardMac/ReadStat>
CONFIGURE_ARGS =	-DENABLE_READSTAT=OFF
CONFIGURE_ARGS +=	-DENABLE_MQTT=OFF
CONFIGURE_ARGS +=	-DENABLE_LIBORIGIN=OFF

CONFIGURE_ARGS +=	-DKDE_INSTALL_MANDIR=${WRKINST}/man

CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Git=On
CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_KUserFeedback=On

CONFIGURE_ARGS +=	-DENABLE_VECTOR_BLF=Off

CONFIGURE_ARGS +=	-DCMAKE_MODULE_PATH=${LOCALBASE}/lib/cmake

CONFIGURE_ARGS +=	-DUSE_SYSTEM_QXLSX=ON

TEST_IS_INTERACTIVE =	X11

pre-configure:
	# use system dependencies
	rm -rf ${WRKSRC}/src/3rdparty/{cmake,kdmactouchbar,liborigin,QXlsx}

.include <bsd.port.mk>
