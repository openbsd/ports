# $OpenBSD: Makefile,v 1.5 2020/04/29 04:11:29 jsg Exp $

COMMENT =	Vulkan ICD loader

V =		1.1.108.0
PKGNAME =	vulkan-loader-${V}
GH_TAGNAME =	sdk-${V}
GH_ACCOUNT =	KhronosGroup
GH_PROJECT =	Vulkan-Loader
REVISION =	0

SHARED_LIBS +=	vulkan	0.0 # 1.1

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
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}
MODPY_RUNDEP =	No

# Tests only build if Google Test framework is in directory external/
NO_TEST =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt
	cp ${WRKSRC}/loader/unknown_ext_chain_gas.asm \
	    ${WRKSRC}/loader/unknown_ext_chain_gas.S

.include <bsd.port.mk>
