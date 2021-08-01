# $OpenBSD: Makefile,v 1.13 2021/08/01 14:23:28 jca Exp $

V =		13
COMMENT =	open source chess engine
PKGNAME =	stockfish-${V}
CATEGORIES =	games

HOMEPAGE =	https://stockfishchess.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

# XXX: Ports does not permit GH_* and MASTER_SITES together.
MASTER_SITES0 =	https://github.com/official-stockfish/Stockfish/archive/
MASTER_SITES1 =	https://tests.stockfishchess.org/api/nn/
DISTFILES =	sf_${V}.tar.gz:0 \
		nn-62ef826d1a6d.nnue:1
EXTRACT_ONLY =	sf_${V}.tar.gz

# C++17
COMPILER =	base-clang ports-gcc

USE_GMAKE =	Yes
MAKE_FLAGS =	CC="${CC}" CXX="${CXX}"

.include <bsd.port.arch.mk>
# Some archs have platform-specific enhancements.
.if ${MACHINE_ARCH:Mamd64}
MAKE_ENV =	ARCH=x86-64
.elif ${MACHINE_ARCH:Mi386}
MAKE_ENV =	ARCH=x86-32
.elif ${MACHINE_ARCH:Marm}
MAKE_ENV =	ARCH=armv7
.elif ${MACHINE_ARCH:Mpowerpc}
MAKE_ENV =	ARCH=ppc-32
.elif ${MACHINE_ARCH:Mpowerpc64}
MAKE_ENV =	ARCH=ppc-64
.elif ${PROPERTIES:Mlp64}
MAKE_ENV =	ARCH=general-64
.else
MAKE_ENV =	ARCH=general-32
.endif

NO_TEST =	Yes

WRKDIST =	${WRKDIR}/Stockfish-sf_${V}
WRKSRC =	${WRKDIST}/src

post-extract:
	cp ${DISTDIR}/nn-62ef826d1a6d.nnue ${WRKSRC}

pre-configure:
	sed -i 's,-O3,${CXXFLAGS},g' ${WRKSRC}/Makefile

.include <bsd.port.mk>
