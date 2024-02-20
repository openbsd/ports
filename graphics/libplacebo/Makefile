COMMENT=	reusable library for GPU-accelerated video/image rendering

GH_ACCOUNT=	haasn
GH_PROJECT=	libplacebo
GH_TAGNAME=	v6.338.2
CATEGORIES=	graphics

SHARED_LIBS=	placebo	8.0

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

WANTLIB +=	${COMPILER_LIBCXX}
WANTLIB +=	execinfo lcms2 m pthread
WANTLIB +=	shaderc_shared vulkan
# GL and epoxy are dlopened by libplacebo
WANTLIB +=	epoxy GL


MODULES=	devel/meson

BUILD_DEPENDS=	devel/fast-float \
		graphics/glad \
		graphics/vulkan-headers

LIB_DEPENDS=	graphics/lcms2 \
		graphics/shaderc \
		graphics/vulkan-loader

COMPILER=	base-clang ports-gcc

CFLAGS +=		-I${X11BASE}/include
LDFLAGS +=		-L${X11BASE}/lib

MODMESON_CONFIGURE_ENV +=	CFLAGS="${CFLAGS}" \
					LDFLAGS="${LDFLAGS}"

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
