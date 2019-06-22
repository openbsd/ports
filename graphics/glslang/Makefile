# $OpenBSD: Makefile,v 1.1.1.1 2019/06/22 15:19:31 thfr Exp $

COMMENT =	reference front-end for GLSL and ESSL

GH_TAGNAME =	7.11.3214
GH_ACCOUNT =	KhronosGroup
GH_PROJECT =	glslang

CATEGORIES =	devel graphics

HOMEPAGE =	https://www.khronos.org/opengles/sdk/tools/Reference-Compiler/
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# BSD-3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

MODULES =	devel/cmake
TEST_DEPENDS =	graphics/spirv-tools \
		shells/bash

SUBST_VARS +=	WRKBUILD

post-configure:
	${SUBST_CMD} ${WRKSRC}/Test/runtests

do-test:
	cd ${WRKSRC}/Test; bash runtests

.include <bsd.port.mk>
