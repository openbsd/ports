COMMENT =	Vulkan ICD loader

V =		1.4.304.0
PKGNAME =	vulkan-loader-${V}
GH_TAGNAME =	vulkan-sdk-${V}
GH_ACCOUNT =	KhronosGroup
GH_PROJECT =	Vulkan-Loader
REVISION =	0

SHARED_LIBS +=	vulkan	1.3 # 1.4.304.0

CATEGORIES =	devel graphics

HOMEPAGE =	https://www.khronos.org/vulkan/
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += X11 xcb m pthread

BUILD_DEPENDS =	graphics/vulkan-headers
RUN_DEPENDS =	graphics/vulkan-headers

CONFIGURE_ARGS =-DFALLBACK_CONFIG_DIRS="${SYSCONFDIR}/xdg" \
		-DFALLBACK_DATA_DIRS="${X11BASE}/share:${LOCALBASE}/share:/usr/share"

COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		lang/python
MODPY_RUNDEP =	No

# Tests only build if Google Test framework is in directory external/
NO_TEST =	Yes

.include <bsd.port.mk>
