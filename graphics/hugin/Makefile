# $OpenBSD: Makefile,v 1.47 2016/07/06 21:25:23 sthen Exp $

BROKEN-hppa =	run dep on enblend-enfuse which will not build on hppa

COMMENT =	panorama image stitcher

DISTNAME =	hugin-2014.0.0
REVISION =	0
EXTRACT_SUFX =	.tar.bz2

# not needed for releases, but makes RCs/betas easier to work with
PKGNAME =	${DISTNAME:S/_//:L}
WRKDIST =	${WRKDIR}/${DISTNAME:C/_.*//}

SHARED_LIBS +=  celeste                   2.0
SHARED_LIBS +=  flann_cpp                 2.0
SHARED_LIBS +=  huginbase                 3.0
SHARED_LIBS +=  huginbasewx               2.0
SHARED_LIBS +=  huginlines                2.0
SHARED_LIBS +=  huginvigraimpex           2.0
SHARED_LIBS +=  icpfindlib                2.0
SHARED_LIBS +=  localfeatures             2.0
SHARED_LIBS +=  makefilelib               2.0
SHARED_LIBS +=  hugin_python_interface    1.0

CATEGORIES =	graphics x11

HOMEPAGE =	http://hugin.sourceforge.net/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

# lensfun is dlopened, so don't remove it from WANTLIB and LIB_DEPENDS
WANTLIB += GL GLEW GLU Half Iex Imath IlmImf IlmThread Xi Xmu
WANTLIB += boost_date_time-mt boost_filesystem-mt boost_chrono-mt
WANTLIB += boost_iostreams-mt boost_regex-mt boost_atomic-mt
WANTLIB += boost_system-mt boost_thread-mt c exiv2 glut>=4.1
WANTLIB += jpeg lensfun m pano13>=3.0 png pthread stdc++ tiff
WANTLIB += wx_base>=3 wx_base_net>=3 wx_base_xml>=3
WANTLIB += wx_gtk2_adv>=3 wx_gtk2_aui>=3 wx_gtk2_core>=3
WANTLIB += wx_gtk2_gl>=3 wx_gtk2_html>=3 wx_gtk2_xrc>=3 z
WANTLIB += ${MODPY_WANTLIB}

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=hugin/}

BUILD_DEPENDS =		devel/swig>=2 \
			graphics/p5-Image-ExifTool
RUN_DEPENDS =		devel/desktop-file-utils \
			graphics/enblend-enfuse \
			graphics/p5-Image-ExifTool \
			misc/shared-mime-info \
			x11/gtk+3,-guic \
			devel/gmake # yes, really a RUN_DEPENDS
RUN_DEPENDS +=		x11/py-wxPython # required for launching python scripts

LIB_DEPENDS =		devel/boost>=1.58 \
			graphics/exiv2>=0.12 \
			graphics/glew \
			graphics/freeglut \
			graphics/ilmbase \
			graphics/jpeg \
			graphics/libpano13>=2.9.19 \
			graphics/lensfun \
			graphics/openexr \
			graphics/png \
			graphics/tiff \
			x11/wxWidgets>=2.8.12p7

MODULES =		devel/cmake devel/gettext lang/python
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
