# $OpenBSD: Makefile,v 1.23 2013/06/22 14:53:09 dcoppa Exp $

ONLY_FOR_ARCHS=	${GCC4_ARCHS}

SHARED_ONLY=	Yes

COMMENT=	photorealistic 3D rendering solution

V=		1.8.2
DISTNAME=	aqsis-${V}
REVISION=	0
CATEGORIES=	graphics

SO_VERSION=	1.0 # 1.6
.for _lib in aqsis_core aqsis_math aqsis_ri2rib aqsis_riutil \
aqsis_shadervm aqsis_slcomp aqsis_slxargs aqsis_tex aqsis_util
SHARED_LIBS+=	${_lib} ${SO_VERSION}
.endfor

HOMEPAGE=	http://www.aqsis.org/

# GPLv2 - LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=aqsis/}

WANTLIB += GL Half Iex IlmImf IlmThread Imath boost_filesystem-mt
WANTLIB += boost_iostreams-mt boost_program_options-mt boost_regex-mt
WANTLIB += boost_system-mt boost_thread-mt boost_wave-mt c
WANTLIB += lib/qt4/QtCore lib/qt4/QtGui lib/qt4/QtOpenGL
WANTLIB += m png pthread stdc++ tiff tiffxx z

MODULES=	devel/cmake

RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+2,-guic
BUILD_DEPENDS=	textproc/libxslt \
		devel/bison
LIB_DEPENDS=	devel/boost \
		graphics/tiff \
		graphics/openexr \
		x11/qt4

NO_TEST=	Yes
MODCMAKE_WANTCOLOR=No
SEPARATE_BUILD=	Yes
MAKE_FLAGS=	VERBOSE=1

CFLAGS+=	-pthread -I${X11BASE}/include

CONFIGURE_ARGS=	-DAQSIS_BOOST_FILESYSTEM_LIBRARY_NAME=boost_filesystem-mt \
		-DAQSIS_BOOST_REGEX_LIBRARY_NAME=boost_regex-mt \
		-DAQSIS_BOOST_THREAD_LIBRARY_NAME=boost_thread-mt \
		-DAQSIS_BOOST_WAVE_LIBRARY_NAME=boost_wave-mt \
		-DCMAKE_INSTALL_PREFIX="${PREFIX}" \
		-DSYSCONFDIR="${SYSCONFDIR}"

pre-configure:
	perl -pi -e 's,!!LIBaqsis_core_VERSION_R!!,${LIBaqsis_core_VERSION:R},;' \
		-e 's,!!LIBaqsis_core_VERSION_E!!,${LIBaqsis_core_VERSION:E},' \
		${WRKSRC}/CMakeLists.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/aqsis
	${INSTALL_DATA} ${WRKBUILD}/aqsisrc \
		${PREFIX}/share/examples/aqsis/

.include <bsd.port.mk>
