# $OpenBSD: Makefile,v 1.4 2019/10/15 04:19:59 bket Exp $

COMMENT =	extremely fast non-cryptographic hash algorithm

GH_ACCOUNT =	Cyan4973
GH_PROJECT =	xxHash
GH_TAGNAME =	v0.7.2
PKGNAME =	${DISTNAME:L}

SHARED_LIBS =	xxhash 0.1	# 0.7.1

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
