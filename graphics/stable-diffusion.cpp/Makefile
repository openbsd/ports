# not enough RAM to compile
ONLY_FOR_ARCHS =	${LP64_ARCHS}
BROKEN-riscv64 =	error: incompatible pointer types passing 'const int64_t *' (aka 'const long long *') to parameter of type 'const long *' [-Wincompatible-pointer-types]

COMMENT =		diffusion model inference system

GH_ACCOUNT =		leejet
GH_PROJECT =		stable-diffusion.cpp
GH_TAGNAME =		master-829-0a565f2
PKGNAME =		stable-diffusion.cpp-0.0.${GH_TAGNAME:S/master-//:C/-.+//g}
REVISION =		0

VERSION.ggml =		8e800cef2948046cc47f9db6090491c6128ca42c
DISTFILES.ggml =	${VERSION.ggml}.tar.gz
SITES.ggml =		https://github.com/leejet/ggml/archive/

VERSION.webm =		5bf12267eea773a32fcf4949de52b0add158a8d5
DISTFILES.webm =	${VERSION.webm}.tar.gz
SITES.webm =		https://github.com/webmproject/libwebm/archive/

CATEGORIES =		graphics

FLAVORS =		vulkan
FLAVOR ?=

MAINTAINER =		Volker Schlecht <volker@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m sharpyuv webp webpmux

MODULES =		devel/cmake
COMPILER =		base-clang ports-gcc

CONFIGURE_ARGS +=	-DGGML_CCACHE=off \
			-DGGML_NATIVE=off \
			-DGGML_STATIC=on \
			-DSD_BUILD_SHARED_GGML_LIB=off \
			-DSD_USE_SYSTEM_GGML=off \
			-DSD_USE_SYSTEM_WEBP=on \
			-DSD_WEBM=ON \
			-DSD_WEBP=ON \
			-DSDCPP_BUILD_VERSION=${GH_TAGNAME}

CFLAGS +=		-I${LOCALBASE}/include
CXXFLAGS +=		-I${LOCALBASE}/include

LIB_DEPENDS =		graphics/libwebp

.if ${FLAVOR:Mvulkan}
CONFIGURE_ARGS +=	-DSD_VULKAN=on
BUILD_DEPENDS +=	graphics/shaderc \
			graphics/spirv-headers
LIB_DEPENDS +=		graphics/vulkan-loader
WANTLIB +=		vulkan
.endif

DOCDIR =		${PREFIX}/share/doc/stable-diffusion.cpp/

post-extract:
	cd ${WRKSRC} && rm -r ./ggml && mv ../ggml-${VERSION.ggml} ./ggml && \
	rm -r ./thirdparty/libwebm && mv ../libwebm-${VERSION.webm} thirdparty/libwebm

post-install:
	# stable-diffusion.cpp needs its own ggml that's statically linked.
	# installing it would create conflicts with devel/libggml
	rm -r ${PREFIX}/include/{ggml*,gguf*}
	rm -r ${PREFIX}/lib/libggml*
	rm -rf ${PREFIX}/lib/cmake
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/* ${DOCDIR}

.include <bsd.port.mk>
