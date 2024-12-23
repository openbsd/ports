DPB_PROPERTIES=	parallel

COMMENT-main=	full text search application
COMMENT-gui=	X user interface to recoll

SHARED_LIBS +=	recoll                    0.0 # 0.0

MULTI_PACKAGES=	-main -gui
ONLY_FOR_ARCHS-gui= aarch64 amd64 i386
PSEUDO_FLAVORS=	no_gui

MODPY_DISTV=	1.41.1
DISTNAME=	recoll-${MODPY_DISTV}

CATEGORIES=	databases sysutils

HOMEPAGE=	https://www.lesbonscomptes.com/recoll/

# GPLv2+
PERMIT_PACKAGE=	Yes

SITES=		https://www.lesbonscomptes.com/recoll/

# C++11
COMPILER=	base-clang ports-gcc

WANTLIB=	${COMPILER_LIBCXX} c m xapian xml2 xslt z
WANTLIB-main=	${WANTLIB} X11 c iconv magic xapian z
WANTLIB-gui=	${WANTLIB} GL recoll \
		Qt6Core Qt6Gui Qt6Network Qt6OpenGL Qt6Positioning \
		Qt6PrintSupport Qt6Qml Qt6QmlModels Qt6Quick Qt6WebChannel \
		Qt6WebEngineCore Qt6WebEngineWidgets Qt6Widgets Qt6Xml

DEBUG_PACKAGES=	${BUILD_PACKAGES}

MODULES=	devel/meson \
		lang/python \
		x11/qt6
MODPY_ADJ_FILES=filters/*.py filters/rclepub

#LIBTOOL_FLAGS=		--tag=disable-static

BUILD_DEPENDS=		devel/cmake \
			devel/gmake \
			devel/py-setuptools \
			textproc/aspell/core

LIB_DEPENDS-main=	databases/xapian-core \
			devel/libmagic \
			textproc/libxslt
# listing deps used by the included filters for some common file formats;
# see https://www.lesbonscomptes.com/recoll/pages/features.html for others
RUN_DEPENDS-main=	archivers/unzip \
			audio/py-mutagen \
			graphics/p5-Image-ExifTool \
			print/poppler,-utils \
			textproc/unrtf
RUN_DEPENDS-gui=	devel/desktop-file-utils \
			x11/gtk+4,-guic
LIB_DEPENDS-gui=	${FULLPKGNAME-main}:${FULLPKGPATH-main} \
			${MODQT6_LIB_DEPENDS} \
			x11/qt6/qtwebengine

CONFIGURE_ENV=		QMAKE="${MODQT_QMAKE}"
MAKE_ENV=		MAKE_JOBS=${MAKE_JOBS} \
			MAKE=gmake \
			QMAKE="${MODQT_QMAKE}"

# #CPPFLAGS="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib" \
#       export QMAKE=qmake6
#       export MAKE="gmake"

CONFIGURE_ARGS=		-Dpython-aspell=false \
			-Dpython-chm=false \
			-Dinotify=false \
			-Dfam=false \
			-Dqtzeitgeist=false \
			-Drecollq=true
#			-Duserdoc=false

.include <bsd.port.arch.mk>
.if ${BUILD_PACKAGES:M-gui}
CONFIGURE_ARGS+=	-Dwebengine=true
.else
CONFIGURE_ARGS+=	-Dqtgui=false
.endif

.include <bsd.port.mk>
