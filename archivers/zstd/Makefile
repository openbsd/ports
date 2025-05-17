COMMENT =		zstandard fast real-time compression algorithm

V =			1.5.7
REVISION =		0
DISTNAME =		zstd-${V}

SHARED_LIBS =		zstd	7.0	# 1.5.7

CATEGORIES =		archivers

HOMEPAGE =		https://facebook.github.io/zstd/

MAINTAINER =		Bjorn Ketelaars <bket@openbsd.org>

# BSD 3 clauses + GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =		c lz4 lzma pthread z

SITES =			https://github.com/facebook/zstd/releases/download/v${V}/

LIB_DEPENDS =		archivers/lz4 \
			archivers/xz
BUILD_DEPENDS =		sysutils/ggrep

MAKE_ENV =		CC="${CC}" \
			CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"
MAKE_FLAGS =		SHARED_EXT_VER="so.$(LIBzstd_VERSION)" \
			SONAME_FLAGS= \
			V=1
FAKE_FLAGS =		PREFIX="${PREFIX}"

# Avoid unaligned access; use memcpy.
CPPFLAGS +=		-DMEM_FORCE_MEMORY_ACCESS=0 -DXXH_FORCE_MEMORY_ACCESS=0
# the magic in libzstd.mk fails, so add noexecstack here to make regress pass
LDFLAGS_base-gcc =	-Wl,-z,noexecstack
LDFLAGS +=		${LDFLAGS_${CHOSEN_COMPILER}}

USE_GMAKE =		Yes

DEBUG_PACKAGES =	${BUILD_PACKAGES}

ALL_TARGET =		default
TEST_TARGET =		check

# keep WRKDIR tidy
TESTTMP =		${WRKDIR}/tmp
TEST_ENV =		TMPDIR=${TESTTMP}

pre-build:
	ln -fs ${LOCALBASE}/bin/ggrep ${WRKDIR}/bin/grep

pre-test:
	mkdir -p ${TESTTMP}

.include <bsd.port.mk>
