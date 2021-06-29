# $OpenBSD: Makefile,v 1.8 2021/06/29 03:48:20 thfr Exp $

PORTROACH =	^[0-9]

COMMENT =	reference front-end for GLSL and ESSL

GH_TAGNAME =	11.5.0
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
TEST_DEPENDS =	graphics/spirv-tools \
		shells/bash

SUBST_VARS +=	WRKBUILD

post-configure:
	${SUBST_CMD} ${WRKSRC}/Test/runtests

do-test:
	cd ${WRKSRC}/Test; bash runtests

.include <bsd.port.mk>
