# $OpenBSD: Makefile,v 1.8 2020/07/20 11:37:22 sthen Exp $

COMMENT =	Vulkan ICD loader

V =		1.2.141.0
PKGNAME =	vulkan-loader-${V}
GH_TAGNAME =	sdk-${V}
GH_ACCOUNT =	KhronosGroup
GH_PROJECT =	Vulkan-Loader
REVISION =	0

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
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}
MODPY_RUNDEP =	No

# Tests only build if Google Test framework is in directory external/
NO_TEST =	Yes

.include <bsd.port.arch.mk>

# Integrated clang assembler doesn't work with x86 - Bug #698164
# remove if build can be updated to clang 9.0.0 (see
# https://github.com/KhronosGroup/Vulkan-Loader/issues/252)
.if ${MACHINE_ARCH}==i386 && ${PROPERTIES:Mclang}
CFLAGS +=	-fno-integrated-as
.endif

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
