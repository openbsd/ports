# $OpenBSD: Makefile,v 1.17 2010/06/07 20:36:33 edd Exp $

VMEM_WARNING =		Yes

COMMENT =		panorama image stitcher

DISTNAME =		hugin-2010.0.0

PKGNAME =		${DISTNAME:S/_//:L}p0
WRKDIST =		${WRKDIR}/${DISTNAME:C/_.*//}

SHARED_LIBS =		celeste 0.0 \
			huginANN 0.0 \
			huginbase 1.0 \
			huginjhead 0.0 \
			huginvigraimpex 0.0

CATEGORIES =		graphics x11

HOMEPAGE =		http://hugin.sourceforge.net/

MAINTAINER =		Stuart Henderson <sthen@openbsd.org>

# GPLv2+
# see post at http://permalink.gmane.org/gmane.comp.misc.ptx/15757 
# (http://www.faqs.org/patents/app/20080267494 in the deghosting code)
PERMIT_PACKAGE_CDROM =	patents
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =patents
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		GL GLU ICE SM X11 Xext Xi Xmu c m pthread stdc++ z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=hugin/}

RUN_DEPENDS =		:desktop-file-utils-*:devel/desktop-file-utils \
			::graphics/autopano-sift-c \
			::graphics/enblend-enfuse \
			::graphics/p5-Image-ExifTool \
			::devel/gmake # yes, really a RUN_DEPENDS
LIB_DEPENDS =		boost_thread-mt::devel/boost \
			exiv2.>=0.1:exiv2->=0.12:graphics/exiv2 \
			GLEW::graphics/glew \
			glut.>=4.1::graphics/freeglut \
			Half,Iex,Imath,IlmThread::graphics/ilmbase \
			jpeg::graphics/jpeg \
			pano13::graphics/libpano13 \
			IlmImf::graphics/openexr \
			png::graphics/png \
			tiff::graphics/tiff \
			wx_base,wx_base_net,wx_base_xml,wx_gtk2_adv,wx_gtk2_core,wx_gtk2_gl,wx_gtk2_html,wx_gtk2_xrc::x11/wxWidgets

USE_X11=		Yes
MODULES +=		devel/cmake
CONFIGURE_STYLE =	cmake
CONFIGURE_ENV =		MANDIR=man
NO_REGRESS =		Yes
CFLAGS +=		-pthread
LDFLAGS +=		-L${X11BASE}/lib

pre-patch:
	find ${WRKSRC} -name '*.orig' | xargs rm
	cd ${WRKSRC}/CMakeModules; perl -i -pe 's/\r$$//' `find . -type f` \
	    ../src/CMakeLists.txt

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeModules/FindPNG.cmake \
	    ${WRKSRC}/CMakeModules/FindGLEW.cmake

.include <bsd.port.mk>
