COMMENT =	extremely fast non-cryptographic hash algorithm

# bump rsync on updates; used as a header-only library there
GH_ACCOUNT =	Cyan4973
GH_PROJECT =	xxHash
GH_TAGNAME =	v0.8.3
PKGNAME =	${DISTNAME:L}
REVISION =	0

SHARED_LIBS =	xxhash 1.0	# 0.8.3

CATEGORIES =	sysutils

HOMEPAGE =	https://xxhash.com

MAINTAINER =	Bjorn Ketelaars <bket@openbsd.org>

# BSD 2-Clause
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB =	c

MAKE_FLAGS =	CC="${CC}" \
		SONAME_FLAGS= \
		SHARED_EXT_VER="so.${LIBxxhash_VERSION}" \
		V=1
FAKE_FLAGS =	PREFIX=${PREFIX}

USE_GMAKE =	Yes

DEBUG_PACKAGES =	${BUILD_PACKAGES}

ALL_TARGET =	default
TEST_TARGET =	check

.include <bsd.port.mk>
