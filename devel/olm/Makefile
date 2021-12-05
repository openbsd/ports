# $OpenBSD: Makefile,v 1.3 2021/12/05 17:53:29 abieber Exp $

COMMENT =	Double Ratchet cryptographic ratchet in C++
V =		3.2.6
DISTNAME =	olm-${V}
CATEGORIES =	devel security

SHARED_LIBS +=	olm       1.1 # 3.2.6

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
