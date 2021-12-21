# $OpenBSD: Makefile,v 1.1.1.1 2021/12/21 14:22:37 kn Exp $

COMMENT =		Cisco implementation of H.264 codec
GH_ACCOUNT =		cisco
GH_PROJECT =		openh264
GH_TAGNAME =		v2.1.1
CATEGORIES =		multimedia

# Fixed #3305: Frame reorder after the frame is read.
# https://github.com/cisco/openh264/pull/3319
MASTER_SITES0 =		https://github.com/cisco/openh264/commit/
PATCHFILES =		openh264-frame-reorder-fix-{}6cc269be.patch:0
PATCH_DIST_STRIP =	-p1

SHARED_LIBS =		openh264	0.0	# 6.0

HOMEPAGE =		https://www.openh264.org/

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# BSD 2-clause
PERMIT_PACKAGE =	Yes

WANTLIB =		${COMPILER_LIBCXX} c m

COMPILER =		base-clang ports-gcc

.if ${MACHINE_ARCH:Mi386} || ${MACHINE_ARCH:Mamd64}
BUILD_DEPENDS +=	devel/nasm
.endif

.if ${MACHINE_ARCH:Mi386}
MAKE_ENV +=		LDFLAGS=-Wl,-z,notext
.endif

TEST_DEPENDS =		devel/gtest

USE_GMAKE =		Yes

# enable architecture specific optimizations, see ${WRKSRC}/build/arch.mk
MAKE_FLAGS +=		ARCH=${MACHINE_ARCH:amd64=x86_64}

# disable unneeded GMP API for now
MAKE_FLAGS +=		HAVE_GMP_API=No

# pass our .so version, see ${WRKSRC}/build-bsd.mk
MAKE_FLAGS +=		FULL_VERSION=${LIBopenh264_VERSION} \
			SHAREDLIB_MAJORVERSION=${LIBopenh264_VERSION:R}

# clear upstream "-O3" and "-g" defaults
MAKE_FLAGS +=		CXX='${CXX}' \
			CFLAGS_OPT='' \
			CFLAGS_DEBUG=''

TEST_FLAGS +=		HAVE_GTEST=Yes
# find devel/gtest and remove libgtest.a to avoid its build in
# ${WRKSRC}/build/gtest-targets.mk
TEST_FLAGS +=	CODEC_UNITTEST_INCLUDES='-I${WRKSRC}/test -I/usr/local/include' \
		CODEC_UNITTEST_LDFLAGS_SUFFIX=-L/usr/local/lib \
		CODEC_UNITTEST_DEPS='libdecoder.a libencoder.a libprocessing.a libcommon.a'

post-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/h264{enc,dec} ${PREFIX}/bin/

.include <bsd.port.mk>
