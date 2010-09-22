# $OpenBSD: Makefile,v 1.11 2010/09/22 12:52:36 ajacoutot Exp $

ONLY_FOR_ARCHS=	${GCC4_ARCHS}

SHARED_ONLY=	Yes

COMMENT=	photorealistic 3D rendering solution

V=		1.6.0
DISTNAME=	aqsis-${V}
CATEGORIES=	graphics

SO_VERSION=	0.0 # 1.6
.for _lib in aqsis_core aqsis_math aqsis_ri2rib aqsis_ribparse \
aqsis_riutil aqsis_shadervm aqsis_slcomp aqsis_slxargs aqsis_tex \
aqsis_util
SHARED_LIBS+=	${_lib} ${SO_VERSION}
.endfor

HOMEPAGE=	http://www.aqsis.org/

# GPLv2 - LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=aqsis/}

WANTLIB += Half Iex Imath c m stdc++ z fltk tiff IlmImf IlmThread
WANTLIB += pthread boost_filesystem-mt boost_iostreams-mt boost_regex-mt
WANTLIB += boost_system-mt boost_thread-mt boost_wave-mt tiffxx

MODULES=	devel/cmake

RUN_DEPENDS=	::devel/desktop-file-utils
BUILD_DEPENDS=	::textproc/libxslt \
		::devel/bison
LIB_DEPENDS=	:fltk->=1.1.7p2:x11/fltk \
		::devel/boost \
		::graphics/tiff \
		::graphics/openexr

NO_REGRESS=	Yes
MODCMAKE_WANTCOLOR=No
SEPARATE_BUILD=	simple
MAKE_FLAGS=	VERBOSE=1

CFLAGS+=	-pthread

CONFIGURE_ARGS=	-DAQSIS_BOOST_FILESYSTEM_LIBRARY_NAME=boost_filesystem-mt \
		-DAQSIS_BOOST_REGEX_LIBRARY_NAME=boost_regex-mt \
		-DAQSIS_BOOST_THREAD_LIBRARY_NAME=boost_thread-mt \
		-DAQSIS_BOOST_WAVE_LIBRARY_NAME=boost_wave-mt \
		-DCMAKE_INSTALL_PREFIX="${PREFIX}" \
		-DSYSCONFDIR="${SYSCONFDIR}"

pre-build:
.for i in build.make link.txt relink.txt
	find ${WRKBUILD} -name ${i} -exec perl -pi -e 's,-ldl,,g' {} \;
.endfor

pre-configure:
	perl -pi -e 's,!!LIBaqsis_core_VERSION_R!!,${LIBaqsis_core_VERSION:R},;' \
		-e 's,!!LIBaqsis_core_VERSION_E!!,${LIBaqsis_core_VERSION:E},' \
		${WRKSRC}/CMakeLists.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/aqsis
	${INSTALL_DATA} ${WRKBUILD}/aqsisrc \
		${PREFIX}/share/examples/aqsis/

.include <bsd.port.mk>
