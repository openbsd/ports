# $OpenBSD: Makefile,v 1.69 2020/05/14 19:16:24 rsadowski Exp $

BROKEN-hppa =	run dep on enblend-enfuse which will not build on hppa

COMMENT =	panorama image stitcher

DISTNAME =	hugin-2019.0.0
REVISION =	3
EXTRACT_SUFX =	.tar.bz2

# not needed for releases, but makes RCs/betas easier to work with
PKGNAME =	${DISTNAME:S/_//:L}
WRKDIST =	${WRKDIR}/${DISTNAME:C/_.*//}

SHARED_LIBS +=  celeste                   4.0
SHARED_LIBS +=  flann_cpp                 4.0
SHARED_LIBS +=  huginbase                 5.0
SHARED_LIBS +=  huginbasewx               4.0
SHARED_LIBS +=  icpfindlib                4.0
SHARED_LIBS +=  localfeatures             4.0
SHARED_LIBS +=  hugin_python_interface    3.0

CATEGORIES =	graphics x11

HOMEPAGE =	http://hugin.sourceforge.net/

MAINTAINER =	Kirill Bychkov <kirby@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLEW GLU Half-2_5 Iex-2_5 IlmImf-2_5
WANTLIB += IlmThread-2_5 Imath-2_5 X11 boost_filesystem-mt boost_system-mt
WANTLIB += c exiv2 fftw3 jpeg lcms2 m pano13 png python2.7 sqlite3
WANTLIB += tiff vigraimpex wx_baseu-3.0 wx_baseu_net-3.0 wx_baseu_xml-3.0
WANTLIB += wx_gtk3u_adv-3.0 wx_gtk3u_aui-3.0 wx_gtk3u_core-3.0
WANTLIB += wx_gtk3u_gl-3.0 wx_gtk3u_html-3.0 wx_gtk3u_qa-3.0 wx_gtk3u_xrc-3.0
WANTLIB += z
# lensfun is dlopened, so don't remove it from WANTLIB and LIB_DEPENDS
WANTLIB += lensfun

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=hugin/}

BUILD_DEPENDS =		devel/gettext,-tools \
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
			x11/wxWidgets>=3.0.4

MODULES =		devel/cmake lang/python
COMPILER =		base-clang ports-gcc

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
	cd ${WRKSRC}/CMakeModules; perl -i -pe 's/\r$$//' `find . -type f` \
	    ../src/CMakeLists.txt

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/lib/python${MODPY_VERSION}/site-packages \
		${PREFIX}/share/hugin/data/plugins/

.include <bsd.port.mk>
