# $OpenBSD: Makefile,v 1.2 2014/08/25 16:15:22 kirby Exp $

COMMENT =		color management library

GH_ACCOUNT = 		imageworks
GH_PROJECT = 		OpenColorIO
GH_TAGNAME = 		v1.0.9
GH_COMMIT =		2b12063e22dbdbff927b5a59d04fe1e30e90c1fe
DISTNAME =		opencolorio-${GH_TAGNAME:S/v//}

SHARED_LIBS +=  OpenColorIO               0.0 # 1.0

CATEGORIES =		graphics

HOMEPAGE =		http://opencolorio.org/index.html

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# several BSD-like
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += m pthread stdc++ tinyxml yaml-cpp

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

CFLAGS =		-pthread

.include <bsd.port.mk>
