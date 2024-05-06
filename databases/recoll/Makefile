DPB_PROPERTIES=	parallel

COMMENT-main=	full text search application
COMMENT-gui=	X user interface to recoll

MULTI_PACKAGES=	-main -gui
ONLY_FOR_ARCHS-gui= aarch64 amd64 i386
PSEUDO_FLAVORS=	no_gui

V=		1.37.0
REVISION=	1
DISTNAME=	recoll-${V}

CATEGORIES=	databases sysutils

HOMEPAGE=	https://www.lesbonscomptes.com/recoll/

# GPLv2+
PERMIT_PACKAGE=	Yes

SITES=		https://www.lesbonscomptes.com/recoll/

# C++11
COMPILER=	base-clang ports-gcc

WANTLIB=	${COMPILER_LIBCXX} c iconv m xapian xml2 xslt z
WANTLIB-main=	${WANTLIB} c iconv lzma m xapian z
WANTLIB-gui=	${WANTLIB} GL Qt5Core Qt5Gui Qt5Network Qt5PrintSupport \
		Qt5Widgets Qt5Xml

PSEUDO_FLACORS=	no_gui

# partially works, but the Qt application doesn't get symbols
DEBUG_PACKAGES=	${BUILD_PACKAGES}

MODULES=		lang/python \
			x11/qt5
MODPY_EGG_VERSION=	$V
MODPY_ADJ_FILES=	filters/*.py filters/rclepub

USE_GMAKE=		Yes
LIBTOOL_FLAGS=		--tag=disable-static

BUILD_DEPENDS=		devel/py-setuptools${MODPY_FLAVOR} \
			textproc/aspell/core

LIB_DEPENDS-main=	databases/xapian-core \
			textproc/libxslt
# listing deps used by the included filters for some common file formats;
# see https://www.lesbonscomptes.com/recoll/pages/features.html for others
RUN_DEPENDS-main=	archivers/unzip \
			audio/py-mutagen${MODPY_FLAVOR} \
			graphics/p5-Image-ExifTool \
			print/poppler,-utils \
			textproc/unrtf
RUN_DEPENDS-gui=	${FULLPKGNAME-main}:${FULLPKGPATH-main}
LIB_DEPENDS-gui=	${MODQT5_LIB_DEPENDS} \
			x11/qt5/qtwebengine
WANTLIB-gui=		Qt5Positioning Qt5Qml Qt5QmlModels Qt5Quick Qt5WebChannel \
			Qt5WebEngine Qt5WebEngineCore Qt5WebEngineWidgets

CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			QMAKE="${MODQT_QMAKE}"

CONFIGURE_ARGS=		--disable-python-aspell \
			--disable-python-chm \
			--disable-userdoc \
			--without-inotify \
			--without-fam \
			--without-qzeitgeist \
			--enable-recollq

.include <bsd.port.arch.mk>
.if ${BUILD_PACKAGES:M-gui}
CONFIGURE_ARGS+=	--enable-webengine
.else
CONFIGURE_ARGS+=	--disable-qtgui
.endif

pre-configure:
	sed -i -e "s,!!LIBrecoll_VERSION_R!!,${LIBrecoll_VERSION:R}," \
		-e "s,!!LIBrecoll_VERSION_E!!,${LIBrecoll_VERSION:E}," \
		${WRKSRC}/Makefile.in
	${SUBST_CMD} ${WRKSRC}/Makefile.in

.include <bsd.port.mk>
