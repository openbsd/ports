# $OpenBSD: Makefile,v 1.55 2017/07/26 22:45:24 sthen Exp $

BROKEN-hppa =	run dep on enblend-enfuse which will not build on hppa

COMMENT =	panorama image stitcher

DISTNAME =	hugin-2016.2.0
REVISION =	1
EXTRACT_SUFX =	.tar.bz2

# not needed for releases, but makes RCs/betas easier to work with
PKGNAME =	${DISTNAME:S/_//:L}
WRKDIST =	${WRKDIR}/${DISTNAME:C/_.*//}

SHARED_LIBS +=  celeste                   3.0
SHARED_LIBS +=  flann_cpp                 3.0
SHARED_LIBS +=  huginbase                 4.0
SHARED_LIBS +=  huginbasewx               3.0
SHARED_LIBS +=  huginlines                3.0
SHARED_LIBS +=  icpfindlib                3.0
SHARED_LIBS +=  localfeatures             3.0
SHARED_LIBS +=  hugin_python_interface    2.0

CATEGORIES =	graphics x11

HOMEPAGE =	http://hugin.sourceforge.net/

MAINTAINER =	Kirill Bychkov <kirby@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

# lensfun is dlopened, so don't remove it from WANTLIB and LIB_DEPENDS
WANTLIB += GL GLEW GLU Half Iex Imath IlmImf IlmThread X11
WANTLIB += boost_filesystem-mt boost_system-mt c exiv2 fftw3
WANTLIB += jpeg lcms2  lensfun m pano13>=3.0
WANTLIB += png pthread sqlite3 tiff vigraimpex wx_base>=3
WANTLIB += wx_base_net>=3 wx_base_xml>=3 wx_gtk2_adv>=3
WANTLIB += wx_gtk2_aui>=3 wx_gtk2_core>=3 wx_gtk2_gl>=3
WANTLIB += wx_gtk2_qa wx_gtk2_html>=3 wx_gtk2_xrc>=3 z ${MODPY_WANTLIB}
WANTLIB += ${COMPILER_LIBCXX}

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=hugin/}

BUILD_DEPENDS =		devel/gettext-tools \
			devel/swig>=2 \
			graphics/p5-Image-ExifTool
RUN_DEPENDS =		devel/desktop-file-utils \
			graphics/enblend-enfuse \
			graphics/p5-Image-ExifTool \
			misc/shared-mime-info \
			x11/gtk+3,-guic
RUN_DEPENDS +=		x11/py-wxPython # required for launching python scripts

LIB_DEPENDS =		devel/boost>=1.58 \
			graphics/exiv2>=0.12 \
			graphics/glew \
			graphics/lcms2 \
			graphics/libpano13>=2.9.19 \
			graphics/lensfun \
			graphics/vigra \
			x11/wxWidgets>=2.8.12p7

MODULES =		devel/cmake lang/python
COMPILER =		gcc

CONFIGURE_ENV =		MANDIR=man
CONFIGURE_ARGS +=	-DBUILD_HSI=ON
NO_TEST =		Yes

MODPY_ADJ_FILES =	src/hugin_script_interface/hpi.py \
			src/hugin_script_interface/plugins/shooting_pattern.py \
			src/hugin_script_interface/plugins/woa.py \
			src/hugin_script_interface/plugins/crop_cp.py \
			src/hugin_script_interface/plugins/top_five.py \
			src/hugin_script_interface/plugins-dev/dual_use.py \
			src/hugin_script_interface/plugins-dev/plugin_skeleton.py

pre-patch:
	rm ${WRKSRC}/CMakeModules/FindPNG.cmake
	rm ${WRKSRC}/CMakeModules/FindGLEW.cmake
	rm ${WRKSRC}/CMakeModules/FindZLIB.cmake
	find ${WRKSRC} -name '*.orig' | xargs rm
	cd ${WRKSRC}/CMakeModules; perl -i -pe 's/\r$$//' `find . -type f` \
	    ../src/CMakeLists.txt

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/lib/python${MODPY_VERSION}/site-packages \
		${PREFIX}/share/hugin/data/plugins/

.include <bsd.port.mk>
