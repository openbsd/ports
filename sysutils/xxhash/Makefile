# $OpenBSD: Makefile,v 1.7 2020/07/28 04:41:18 bket Exp $

COMMENT =	extremely fast non-cryptographic hash algorithm

GH_ACCOUNT =	Cyan4973
GH_PROJECT =	xxHash
GH_TAGNAME =	v0.8.0
PKGNAME =	${DISTNAME:L}

SHARED_LIBS =	xxhash 0.2	# 0.7.4

CATEGORIES =	sysutils

HOMEPAGE =	https://cyan4973.github.io/xxHash/

MAINTAINER =	Bjorn Ketelaars <bket@openbsd.org>

# BSD 2-Clause
PERMIT_PACKAGE =	Yes

WANTLIB =	c

MAKE_FLAGS =	CC="${CC}" \
		CXX="${CXX}" \
		CFLAGS="${CFLAGS}" \
		CXXFLAGS="${CXXFLAGS}" \
		SONAME_FLAGS= \
		SHARED_EXT_VER="so.${LIBxxhash_VERSION}" \
		V=1
FAKE_FLAGS =	PREFIX=${PREFIX}

USE_GMAKE =	Yes

DEBUG_PACKAGES =	${BUILD_PACKAGES}

ALL_TARGET =	default

.include <bsd.port.mk>
