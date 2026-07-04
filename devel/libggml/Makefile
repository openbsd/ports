BROKEN-riscv64 =	RISC-V type '__rvv_float32m8_t' requires the 'zve32f' extension

COMMENT=		tensor library for machine learning

GH_ACCOUNT=		ggml-org
GH_PROJECT=		ggml
GH_TAGNAME =		v0.15.3
PKGNAME=		lib${DISTNAME}

SHARED_LIBS +=		ggml 4.2
SHARED_LIBS +=		ggml-base 4.1

CATEGORIES=		devel

MAINTAINER =		Kirill A. Korinsky <kirill@korins.ky>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += m pthread ${COMPILER_LIBCXX}

MODULES=	devel/cmake
COMPILER=	base-clang ports-gcc

BUILD_DEPENDS=	graphics/spirv-headers

CONFIGURE_ARGS=	-DGGML_CCACHE=OFF \
		-DGGML_LTO=ON \
		-DGGML_NATIVE=OFF \
		-DGGML_RVV=OFF \
		-DGGML_BACKEND_DL=ON \
		-DGGML_BACKEND_DIR=${PREFIX}/lib

.if ${MACHINE_ARCH:Mamd64}
CONFIGURE_ARGS+= -DGGML_CPU_ALL_VARIANTS=on
PKG_ARGS+=	-Damd64=1
PKG_ARGS+=	-Dcpu=0
.else
CONFIGURE_ARGS+= -DGGML_CPU_ALL_VARIANTS=off
PKG_ARGS+=	-Damd64=0
PKG_ARGS+=	-Dcpu=1
.endif

.if ${MACHINE_ARCH:Mamd64} || ${MACHINE_ARCH:Maarch64}
CONFIGURE_ARGS+= -DGGML_VULKAN=on
BUILD_DEPENDS+=	graphics/shaderc
LIB_DEPENDS+=	graphics/vulkan-loader
WANTLIB+=	vulkan
PKG_ARGS+=	-Dvulkan=1
.else
CONFIGURE_ARGS+= -DGGML_VULKAN=off
PKG_ARGS+=	-Dvulkan=0
.endif

.include <bsd.port.mk>
