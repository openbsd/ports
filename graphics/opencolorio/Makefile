# $OpenBSD: Makefile,v 1.17 2022/03/04 22:21:01 sthen Exp $

COMMENT =		color management library

EPOCH =			0
GH_ACCOUNT =		AcademySoftwareFoundation
GH_PROJECT =		OpenColorIO
GH_TAGNAME =		v2.1.1
PKGNAME =		${DISTNAME:L}

SHARED_LIBS +=  OpenColorIO               1.1 # 1.1.1

CATEGORIES =		graphics

HOMEPAGE =		http://opencolorio.org/index.html

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co> \
			Dimitri Karamazov <deserter666@danwin1210.me>

# several BSD-like
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Imath-3_1 expat m pystring yaml-cpp

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			lang/python

BUILD_DEPENDS =		devel/boost
LIB_DEPENDS =		devel/pystring \
			devel/yaml-cpp \
			math/imath

CONFIGURE_ARGS +=	-DPYTHON="${MODPY_BIN}" \
			-DOCIO_BUILD_STATIC=OFF \
			-DOCIO_BUILD_APPS=OFF \
			-DCMAKE_SHARED_LINKER_FLAGS="-L${LOCALBASE}/lib" \
			-DCMAKE_EXE_LINKER_FLAGS="-L${LOCALBASE}/lib" \
			-DCMAKE_MODULE_LINKER_FLAGS="-L${LOCALBASE}/lib"

.if ${MACHINE_ARCH} == "amd64"
CONFIGURE_ARGS +=	-DOCIO_USE_SSE=ON
.else
CONFIGURE_ARGS +=	-DOCIO_USE_SSE=OFF
.endif

.include <bsd.port.mk>
