# $OpenBSD: Makefile,v 1.5 2021/06/29 03:48:20 thfr Exp $

COMMENT =	SPIRV-Headers

DISTNAME =	spirv-headers-1.5.4pl2
# commit from 2021-06-23
GH_COMMIT =	f95c3b3761ee1b1903f54ae69b526ed6f0edc3b9
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
