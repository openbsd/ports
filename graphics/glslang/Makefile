# $OpenBSD: Makefile,v 1.5 2020/09/04 05:09:17 thfr Exp $

COMMENT =	reference front-end for GLSL and ESSL

REVISION =	0
GH_TAGNAME =	8.13.3743
GH_ACCOUNT =	KhronosGroup
GH_PROJECT =	glslang

CATEGORIES =	devel graphics

HOMEPAGE =	https://www.khronos.org/opengles/sdk/tools/Reference-Compiler/
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# BSD-3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

# C++11
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}
TEST_DEPENDS =	graphics/spirv-tools \
		shells/bash

SUBST_VARS +=	WRKBUILD

post-configure:
	${SUBST_CMD} ${WRKSRC}/Test/runtests

do-test:
	cd ${WRKSRC}/Test; bash runtests

.include <bsd.port.mk>
