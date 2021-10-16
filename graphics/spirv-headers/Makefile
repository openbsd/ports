# $OpenBSD: Makefile,v 1.6 2021/10/16 14:50:40 thfr Exp $

COMMENT =	SPIRV-Headers

DISTNAME =	spirv-headers-1.5.4pl3
# commit from 2021-10-07
GH_COMMIT =	5ea2d62e8c0ddd9e2a7d0ca5e3f2335e09e5f408
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
