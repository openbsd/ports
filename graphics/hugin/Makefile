# $OpenBSD: Makefile,v 1.38 2013/11/25 14:16:22 sthen Exp $

BROKEN-hppa =	run dep on enblend-enfuse which will not build on hppa

SHARED_ONLY =		Yes

COMMENT =		panorama image stitcher

DISTNAME =		hugin-2011.4.0
EXTRACT_SUFX =		.tar.bz2
REVISION =		3

# not needed for releases, but makes RCs/betas easier to work with
PKGNAME =		${DISTNAME:S/_//:L}
WRKDIST =		${WRKDIR}/${DISTNAME:C/_.*//}

SHARED_LIBS +=  celeste                   0.0
SHARED_LIBS +=  flann_cpp                 0.0
SHARED_LIBS +=  huginbase                 1.0
SHARED_LIBS +=  huginbasewx               0.0
SHARED_LIBS +=  huginlines                0.0
SHARED_LIBS +=  huginvigraimpex           0.0
SHARED_LIBS +=  icpfindlib                0.0
SHARED_LIBS +=  localfeatures             0.0
SHARED_LIBS +=  makefilelib               0.0

CATEGORIES =		graphics x11

HOMEPAGE =		http://hugin.sourceforge.net/

MAINTAINER =		Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLEW GLU Half Iex Imath IlmImf IlmThread ICE SM X11
WANTLIB += Xext Xi Xmu boost_date_time-mt boost_filesystem-mt
WANTLIB += boost_iostreams-mt boost_regex-mt boost_signals-mt
WANTLIB += boost_system-mt boost_thread-mt c exiv2 glut>=4.1
WANTLIB += jpeg m pano13>=2.0 png pthread stdc++ tiff
WANTLIB += wx_base>=3 wx_base_net>=3 wx_base_xml>=3
WANTLIB += wx_gtk2_adv>=3 wx_gtk2_aui>=3 wx_gtk2_core>=3
WANTLIB += wx_gtk2_gl>=3 wx_gtk2_html>=3 wx_gtk2_xrc>=3 z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=hugin/}

RUN_DEPENDS =		devel/desktop-file-utils \
			graphics/enblend-enfuse \
			graphics/p5-Image-ExifTool \
			misc/shared-mime-info \
			x11/gtk+2,-guic \
			devel/gmake # yes, really a RUN_DEPENDS

LIB_DEPENDS =		devel/boost \
			graphics/exiv2>=0.12 \
			graphics/glew \
			graphics/freeglut \
			graphics/ilmbase \
			graphics/jpeg \
			graphics/libpano13>=2.9.18beta1 \
			graphics/openexr \
			graphics/png \
			graphics/tiff \
			x11/wxWidgets>=2.8.12p7
BUILD_DEPENDS +=	devel/tclap

USE_GROFF =		Yes
MODULES +=		devel/cmake
CONFIGURE_ENV =		MANDIR=man
CONFIGURE_ARGS +=	-DCMAKE_BUILD_TYPE:STRING=Release
NO_TEST =		Yes

pre-patch:
	find ${WRKSRC} -name '*.orig' | xargs rm
	cd ${WRKSRC}/CMakeModules; perl -i -pe 's/\r$$//' `find . -type f` \
	    ../src/CMakeLists.txt

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeModules/FindPNG.cmake \
	    ${WRKSRC}/CMakeModules/FindGLEW.cmake

.include <bsd.port.mk>
