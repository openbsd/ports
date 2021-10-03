# $OpenBSD: Makefile,v 1.14 2021/10/03 21:06:38 bcallah Exp $

V =		14
COMMENT =	open source chess engine
PKGNAME =	stockfish-${V}
NNUE =		nn-3475407dc199.nnue
CATEGORIES =	games

HOMEPAGE =	https://stockfishchess.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

# XXX: Ports does not permit GH_* and MASTER_SITES together.
MASTER_SITES0 =	https://github.com/official-stockfish/Stockfish/archive/
MASTER_SITES1 =	https://github.com/daylen/stockfish-mac/raw/b1de3922d481969cb4fbc9c32952a8e01ca0c3e1/
DISTFILES =	sf_${V}.tar.gz:0 \
		${NNUE}:1
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
	cp ${DISTDIR}/${NNUE} ${WRKSRC}

pre-configure:
	sed -i 's,-O3,${CXXFLAGS},g' ${WRKSRC}/Makefile

.include <bsd.port.mk>
