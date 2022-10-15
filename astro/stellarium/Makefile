USE_WXNEEDED=		Yes

COMMENT=		free open source planetarium

GH_TAGNAME=		v1.0
GH_ACCOUNT=		Stellarium
GH_PROJECT=		stellarium

CATEGORIES=		astro x11

HOMEPAGE=		http://www.stellarium.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} QXlsx Qt5Charts Qt5Concurrent Qt5Core
WANTLIB += Qt5Gui Qt5Multimedia Qt5MultimediaWidgets Qt5Network
WANTLIB += Qt5OpenGL Qt5Positioning Qt5PrintSupport Qt5Qml Qt5QmlModels
WANTLIB += Qt5Quick Qt5Script Qt5SerialPort Qt5WebChannel Qt5WebEngineCore
WANTLIB += Qt5WebEngineWidgets Qt5Widgets c gps m z

MODULES=		devel/cmake \
			lang/python \
			x11/qt5

MODCMAKE_LDFLAGS=	-L${LOCALBASE}/lib
MODPY_RUNDEP=		No

BUILD_DEPENDS=		astro/calcmysky \
			devel/indi,-libs

LIB_DEPENDS=		misc/gpsd \
			textproc/qxlsx \
			x11/qt5/qtcharts \
			x11/qt5/qtmultimedia \
			x11/qt5/qtscript \
			x11/qt5/qtserialport \
			x11/qt5/qtwebengine

# used to download more stars definitions
RUN_DEPENDS=		net/curl \
			devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+3,-guic

CONFIGURE_ENV=		HOME=${WRKDIR}
PORTHOME=		${WRKDIR}

CONFIGURE_ARGS=		-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON \
			-DSTELLARIUM_RELEASE_BUILD=1

# needs Qt6 WebEngineWidgets;
# !!! sync Qt version with astro/calcmysky and textproc/qxlsx
CONFIGURE_ARGS +=	-DENABLE_QT6=OFF

CFLAGS +=		-I${LOCALBASE}/include -I${X11BASE}/include
CXXFLAGS +=		-I${LOCALBASE}/include -I${X11BASE}/include

NO_TEST=		Yes

pre-configure:
	sed -i 's,/usr/local,${LOCALBASE},g' ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
