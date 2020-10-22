# $OpenBSD: Makefile,v 1.2 2020/10/22 04:01:05 abieber Exp $

COMMENT =	Double Ratchet cryptographic ratchet in C++
V =		3.2.1
DISTNAME =	olm-${V}
CATEGORIES =	devel security

SHARED_LIBS +=	olm       1.0 # 3.2.1

MASTER_SITES =	https://gitlab.matrix.org/matrix-org/olm/-/archive/${V}/

HOMEPAGE =	https://git.matrix.org/git/olm

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} m

MODULES =	devel/cmake

# C++11
COMPILER =	base-clang ports-gcc

MAKE_FLAGS =	CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

NO_TEST =	Yes

.include <bsd.port.mk>
