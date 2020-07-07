# $OpenBSD: Makefile,v 1.3 2020/07/07 08:08:04 thfr Exp $

COMMENT =	SPIRV-Headers

V =		1.5.3
PKGNAME =	spirv-headers-${V}
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
