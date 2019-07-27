# $OpenBSD: Makefile,v 1.3 2019/07/27 15:47:35 thfr Exp $

COMMENT =	reference front-end for GLSL and ESSL

GH_TAGNAME =	7.11.3214
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

MODULES =	devel/cmake
TEST_DEPENDS =	graphics/spirv-tools \
		shells/bash

SUBST_VARS +=	WRKBUILD

post-configure:
	${SUBST_CMD} ${WRKSRC}/Test/runtests

do-test:
	cd ${WRKSRC}/Test; bash runtests

.include <bsd.port.mk>
