# $OpenBSD: Makefile,v 1.5 2020/03/06 04:22:13 bket Exp $

COMMENT =	extremely fast non-cryptographic hash algorithm

GH_ACCOUNT =	Cyan4973
GH_PROJECT =	xxHash
GH_TAGNAME =	v0.7.3
PKGNAME =	${DISTNAME:L}

SHARED_LIBS =	xxhash 0.1	# 0.7.1

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
		SHARED_EXT_VER="so.${LIBxxhash_VERSION}"
FAKE_FLAGS =	PREFIX=${PREFIX}

USE_GMAKE =	Yes

.include <bsd.port.mk>
