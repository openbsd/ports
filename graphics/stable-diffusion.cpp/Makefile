# not enough RAM to compile
ONLY_FOR_ARCHS =	${LP64_ARCHS}
BROKEN-riscv64 =	error: incompatible pointer types passing 'const int64_t *' (aka 'const long long *') to parameter of type 'const long *' [-Wincompatible-pointer-types]

COMMENT =		diffusion model inference system

GH_ACCOUNT =		leejet
GH_PROJECT =		stable-diffusion.cpp
GH_TAGNAME =		master-685-19bdfe2
PKGNAME =		stable-diffusion.cpp-0.0.${GH_TAGNAME:S/master-//:C/-.+//g}
REVISION =		0

VERSION.ggml =		0ce7ad348a3151e1da9f65d962044546bcaad421
DISTFILES.ggml =	${VERSION.ggml}.tar.gz
SITES.ggml =		https://github.com/ggml-org/ggml/archive/

CATEGORIES =		graphics

FLAVORS =		vulkan
FLAVOR ?=

MAINTAINER =		Volker Schlecht <volker@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

MODULES =		devel/cmake
COMPILER =		base-clang ports-gcc

CONFIGURE_ARGS +=	-DGGML_CCACHE=off \
			-DSD_BUILD_SHARED_GGML_LIB=off \
			-DSD_USE_SYSTEM_GGML=off

CFLAGS +=		-I${LOCALBASE}/include
CXXFLAGS +=		-I${LOCALBASE}/include

DOCDIR =		${PREFIX}/share/doc/stable-diffusion.cpp/

.if ${FLAVOR:Mvulkan}
CONFIGURE_ARGS +=	-DSD_VULKAN=on
BUILD_DEPENDS +=	graphics/shaderc \
			graphics/spirv-headers
LIB_DEPENDS +=		graphics/vulkan-loader
WANTLIB +=		vulkan
.endif

post-extract:
	cd ${WRKSRC} && rm -r ./ggml && mv ../ggml-${VERSION.ggml} ./ggml

post-install:
	# stable-diffusion.cpp needs its own ggml that's statically linked.
	# installing it would create conflicts with devel/libggml
	rm -r ${PREFIX}/include/{ggml*,gguf*}
	rm -r ${PREFIX}/lib/libggml*
	rm -rf ${PREFIX}/lib/cmake
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/* ${DOCDIR}

.include <bsd.port.mk>
