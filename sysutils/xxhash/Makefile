# $OpenBSD: Makefile,v 1.1.1.1 2019/07/11 16:28:13 bket Exp $

COMMENT =	extremely fast non-cryptographic hash algorithm

GH_ACCOUNT =	Cyan4973
GH_PROJECT =	xxHash
GH_TAGNAME =	v0.7.0
PKGNAME =	${DISTNAME:L}

SHARED_LIBS =	xxhash 0.0	# 0.7.0

CATEGORIES =	sysutils

HOMEPAGE =	https://cyan4973.github.io/xxHash/

MAINTAINER =	Bjorn Ketelaars <bket@openbsd.org>

# BSD 2-Clause
PERMIT_PACKAGE =	Yes

WANTLIB =	c

FAKE_FLAGS =	PREFIX=${PREFIX}
MAKE_FLAGS =	LIBVER=${LIBxxhash_VERSION}

USE_GMAKE =	Yes

.include <bsd.port.mk>
