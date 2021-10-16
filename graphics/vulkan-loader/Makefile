# $OpenBSD: Makefile,v 1.13 2021/10/16 14:50:40 thfr Exp $

COMMENT =	Vulkan ICD loader

V =		1.2.189.1
PKGNAME =	vulkan-loader-${V}
GH_TAGNAME =	sdk-${V}
GH_ACCOUNT =	KhronosGroup
GH_PROJECT =	Vulkan-Loader

SHARED_LIBS +=	vulkan	0.1 # 1.2

CATEGORIES =	devel graphics

HOMEPAGE =	https://www.khronos.org/vulkan/
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += m pthread

BUILD_DEPENDS =	graphics/vulkan-headers
RUN_DEPENDS =	graphics/vulkan-headers

CONFIGURE_ARGS =	-DBUILD_WSI_WAYLAND_SUPPORT=False

COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		lang/python
MODPY_RUNDEP =	No

# Tests only build if Google Test framework is in directory external/
NO_TEST =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
