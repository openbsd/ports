# $OpenBSD: Makefile,v 1.16 2021/11/02 00:01:15 sthen Exp $

COMMENT =		color management library

EPOCH =			0
GH_ACCOUNT =		AcademySoftwareFoundation
GH_PROJECT =		OpenColorIO
GH_TAGNAME =		v1.1.1
REVISION =		1
PKGNAME =		${DISTNAME:L}

SHARED_LIBS +=  OpenColorIO               1.1 # 1.1.1

CATEGORIES =		graphics

HOMEPAGE =		http://opencolorio.org/index.html

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# several BSD-like
PERMIT_PACKAGE =	Yes

WANTLIB += m pthread ${COMPILER_LIBCXX} tinyxml yaml-cpp

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			lang/python

BUILD_DEPENDS =		devel/boost
LIB_DEPENDS =		textproc/tinyxml \
			devel/yaml-cpp

CONFIGURE_ARGS +=	-DPYTHON="${MODPY_BIN}" \
			-DUSE_EXTERNAL_TINYXML=ON \
			-DUSE_EXTERNAL_YAML=ON \
			-DOCIO_USE_SSE=OFF \
			-DOCIO_BUILD_STATIC=OFF \
			-DOCIO_BUILD_APPS=OFF \
			-DCMAKE_SHARED_LINKER_FLAGS="-L${LOCALBASE}/lib" \
			-DCMAKE_EXE_LINKER_FLAGS="-L${LOCALBASE}/lib" \
			-DCMAKE_MODULE_LINKER_FLAGS="-L${LOCALBASE}/lib"

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/cmake/OpenColorIO
	mv ${PREFIX}/cmake/*.cmake ${PREFIX}/OpenColorIO*.cmake \
		 ${PREFIX}/lib/cmake/OpenColorIO
	rm -rf ${PREFIX}/cmake

.include <bsd.port.mk>
