COMMENT=	Google VP8/VP9 video codec

GH_ACCOUNT=	webmproject
GH_PROJECT=	libvpx
GH_TAGNAME=	v1.14.1
REVISION=	0
EPOCH=		0
CATEGORIES=	multimedia

SHARED_LIBS=	vpx	17.0

HOMEPAGE=	https://www.webmproject.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c m pthread ${COMPILER_LIBCXX}

# XXX requires __atomic builtins
COMPILER =	base-clang ports-gcc

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	devel/yasm
.endif

MAKE_FLAGS=	LIBVPX_VERSION=${LIBvpx_VERSION} verbose=yes

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= simple
CONFIGURE_ARGS+=--enable-shared \
		--enable-multi-res-encoding \
		--enable-runtime-cpu-detect \
		--enable-vp9-highbitdepth \
		--prefix=${PREFIX} \
		--enable-optimizations \
		--enable-unit-tests \
		--enable-decode-perf-tests \
		--enable-encode-perf-tests

.if ${MACHINE_ARCH} == "arm"
CONFIGURE_ARGS+=--disable-neon
.endif

ALL_TARGET=

post-install:
	@chown ${BINOWN}:${BINGRP} ${PREFIX}/bin/*
	@chmod ${BINMODE} ${PREFIX}/bin/*
	@chown ${SHAREOWN}:${SHAREGRP} ${PREFIX}/include/vpx/*.h
	@chmod ${SHAREMODE} ${PREFIX}/include/vpx/*.h
	@chown ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/lib*
	@chmod ${SHAREMODE} ${PREFIX}/lib/lib*
	@chown ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/pkgconfig/vpx.pc
	@chmod ${SHAREMODE} ${PREFIX}/lib/pkgconfig/vpx.pc

pre-test:
	@if ! [ -e ${WRKBUILD}/screendata.y4m ]; then \
		echo "\n>>> Tests require additional downloads. Please run:"; \
		echo ">>> ${GMAKE} -C ${WRKBUILD} testdata\n"; \
		exit 1; \
	fi

.include <bsd.port.mk>
