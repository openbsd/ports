COMMENT=	reusable library for GPU-accelerated video/image rendering

GH_ACCOUNT=	haasn
GH_PROJECT=	libplacebo
GH_TAGNAME=	v6.338.2
REVISION=	0
CATEGORIES=	graphics

SHARED_LIBS=	placebo	8.0

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

WANTLIB +=	${COMPILER_LIBCXX}
WANTLIB +=	execinfo lcms2 m pthread shaderc_shared vulkan
# GL and epoxy are dlopened by libplacebo
WANTLIB +=	GL epoxy

MODULES=	devel/meson

BUILD_DEPENDS=	devel/fast-float \
		graphics/glad>=2.0.6 \
		graphics/vulkan-headers

LIB_DEPENDS=	graphics/lcms2 \
		graphics/shaderc \
		graphics/vulkan-loader

COMPILER=	base-clang ports-gcc

CONFIGURE_ARGS+=-Ddefault_library=both \
		-Dd3d11=disabled \
		-Ddemos=false \
		-Ddovi=disabled \
		-Dglslang=disabled \
		-Dlibdovi=disabled \
		-Dshaderc=enabled \
		-Dopengl=enabled \
		-Dunwind=disabled \
		-Dvulkan=enabled \
		-Dxxhash=disabled

NO_TEST=	Yes

.include <bsd.port.mk>
