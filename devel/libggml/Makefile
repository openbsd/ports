COMMENT=		tensor library for machine learning

GH_ACCOUNT=		ggml-org
GH_PROJECT=		ggml
GH_COMMIT=		f5425c0ee5e582a7d64411f06139870bff3e52e0
DISTNAME=		ggml-0.9.4pl20251211
PKGNAME=		lib${DISTNAME}

SHARED_LIBS +=		ggml 3.2
SHARED_LIBS +=		ggml-base 3.2

CATEGORIES=		devel

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += m pthread ${COMPILER_LIBCXX}

MODULES=	devel/cmake
COMPILER=	base-clang
# ports-gcc needs fixing for std::filesystem

# probably not enough...
EXTRA_ports-gcc= -lstdc++fs
MODCMAKE_LDFLAGS= ${EXTRA_${CHOSEN_COMPILER}}

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
BUILD_DEPENDS=	graphics/shaderc
LIB_DEPENDS=	graphics/vulkan-loader
WANTLIB+=	vulkan
PKG_ARGS+=	-Dvulkan=1
.else
CONFIGURE_ARGS+= -DGGML_VULKAN=off
PKG_ARGS+=	-Dvulkan=0
.endif

.include <bsd.port.mk>
