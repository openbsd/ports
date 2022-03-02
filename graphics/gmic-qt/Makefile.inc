COMMENT = 	gmic-qt ${GMIC_WHAT}
V = 3.0.2

DISTNAME ?= 	gmic-qt-${QT_HOST}-$V
CATEGORIES = 	graphics
HOMEPAGE = 	https://gmic.eu/

WRKDIST = ${WRKDIR}/gmic-$V
WRKSRC = ${WRKDIST}/gmic-qt

# CeCILL
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX} X11 c m z
WANTLIB += curl fftw3 fftw3_threads
WANTLIB += ICE Qt5Core Qt5Gui Qt5Network Qt5Widgets SM Xext 
WANTLIB += png gmic

MASTER_SITES = 	https://gmic.eu/files/source/
DISTFILES = 	gmic_$V${EXTRACT_SUFX}

MODULES = 	devel/cmake x11/qt5


LIB_DEPENDS += 	net/curl \
		graphics/png \
		math/fftw3 \
		graphics/gmic

CONFIGURE_STYLE = cmake

# just so that the build doesn't create a crazy log
MAKE_ENV = 	TERM=xterm
LDFLAGS = 	-L${LOCALBASE}/lib

# XXX does not do what it says it does
CONFIGURE_ARGS += -DCUSTOM_CFLAGS=Yes

CONFIGURE_ARGS += -DGMIC_QT_HOST=${QT_HOST}
CONFIGURE_ARGS += -DCMAKE_EXE_LINKER_FLAGS="${LDFLAGS}"
CONFIGURE_ARGS += -DCMAKE_MODULE_LINKER_FLAGS="${LDFLAGS}"
CONFIGURE_ARGS += -DCMAKE_SHARED_LINKER_FLAGS="${LDFLAGS}"
CONFIGURE_ARGS += -DENABLE_DYNAMIC_LINKING=ON
CONFIGURE_ARGS += -DGMIC_PATH=${WRKDIST}/src

SUBST_VARS +=	QT_HOST GMIC_WHAT
# XXX somehow there's no debug info generated ?
#DEBUG_PACKAGES = ${BUILD_PACKAGES}
GMIC_WHAT ?=	plugin for ${QT_HOST}


CHECKSUM_FILE = ${.CURDIR}/../distinfo
DESCR = ${.CURDIR}/../pkg/DESCR
PATCHDIR = ${.CURDIR}/../patches
UPDATE_PLIST_ARGS = -i QT_HOST
