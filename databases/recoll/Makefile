# $OpenBSD: Makefile,v 1.17 2022/02/12 12:33:20 sthen Exp $

COMMENT-main=	full text search application
COMMENT-gui=	X user interface to recoll

MULTI_PACKAGES=	-main -gui

V=		1.31.6
DISTNAME=	recoll-${V}

SHARED_LIBS +=	recoll-${V}            1.0 # 0.0
SHARED_LIBS +=  recoll                 1.0 # 0.0

CATEGORIES=	databases sysutils

HOMEPAGE=	https://www.lesbonscomptes.com/recoll/

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://www.lesbonscomptes.com/recoll/

# C++11
COMPILER=	base-clang ports-gcc

WANTLIB=	${COMPILER_LIBCXX} c iconv m xapian z
WANTLIB-main=	${WANTLIB} c iconv lzma m xapian xml2 xslt z
WANTLIB-gui=	${WANTLIB} GL Qt5Core Qt5Gui Qt5Network Qt5PrintSupport \
		Qt5Widgets Qt5Xml lib/recoll/recoll-${V}

# otherwise dependency check during build fails when updating
RECOLL_LIB=	librecoll-${V}.so.${LIBrecoll-${V}_VERSION}
SUBST_VARS+=	RECOLL_LIB

# partially works, but the Qt application doesn't get symbols
DEBUG_PACKAGES=	${BUILD_PACKAGES}

MODULES=		lang/python \
			x11/qt5
MODPY_EGG_VERSION=	$V
MODPY_ADJ_FILES=	filters/*.py filters/rclepub

USE_GMAKE=		Yes
DPB_PROPERTIES=		parallel

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

LIB_DEPENDS-gui=	${MODQT5_LIB_DEPENDS} \
			databases/recoll

CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			QMAKE="${MODQT_QMAKE}"

CONFIGURE_ARGS=		--disable-python-chm \
			--disable-userdoc \
			--without-inotify \
			--without-fam \
			--without-qzeitgeist \
			--enable-recollq

.if ${MACHINE_ARCH:Mamd64} || ${MACHINE_ARCH:Maarch64} || ${MACHINE_ARCH:Mi386}
CONFIGURE_ARGS+=	--enable-webengine
LIB_DEPENDS-gui+=	x11/qt5/qtwebengine
WANTLIB-gui+=	Qt5Positioning Qt5Qml Qt5QmlModels Qt5Quick Qt5WebChannel \
		Qt5WebEngine Qt5WebEngineCore Qt5WebEngineWidgets
.else
LIB_DEPENDS-gui+=	x11/qt5/qtwebkit
WANTLIB-gui+=	Qt5WebKit Qt5WebKitWidgets
.endif

pre-configure:
	sed -i -e "s,!!LIBrecoll_VERSION_R!!,${LIBrecoll_VERSION:R}," \
		-e "s,!!LIBrecoll_VERSION_E!!,${LIBrecoll_VERSION:E}," \
		${WRKSRC}/Makefile.in
	${SUBST_CMD} ${WRKSRC}/Makefile.in

.include <bsd.port.mk>
