# $OpenBSD: Makefile,v 1.4 2020/12/27 15:58:42 thfr Exp $

COMMENT =	SPIRV-Headers

V =		1.5.4.raytracing.fixed
PKGNAME =	spirv-headers-1.5.4pl1
GH_TAGNAME =	${V}
GH_ACCOUNT =	KhronosGroup
GH_PROJECT =	SPIRV-Headers

CATEGORIES =	devel graphics

HOMEPAGE =	https://www.khronos.org/vulkan/
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# BSD-style
PERMIT_PACKAGE =	Yes

# C++
COMPILER =	base-clang ports-gcc base-gcc

MODULES =	devel/cmake

NO_TEST =	Yes

.include <bsd.port.mk>
