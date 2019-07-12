# $OpenBSD: Makefile,v 1.10 2019/07/12 20:47:04 sthen Exp $

COMMENT =		color management library

V =			20140911
DISTNAME =		OpenColorIO-$V
PKGNAME =		opencolorio-$V
REVISION =		2

SHARED_LIBS +=  OpenColorIO               1.0 # 1.0

CATEGORIES =		graphics

HOMEPAGE =		http://opencolorio.org/index.html

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# several BSD-like
PERMIT_PACKAGE =	Yes

WANTLIB += m pthread ${COMPILER_LIBCXX} tinyxml yaml-cpp

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		http://deftly.net/

MODULES =		devel/cmake \
			lang/python
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

WRKDIST =		${WRKDIR}/OpenColorIO-master

CFLAGS =		-pthread

.include <bsd.port.mk>
