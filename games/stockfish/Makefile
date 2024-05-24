V =		16.1
COMMENT =	open source chess engine
PKGNAME =	stockfish-${V}
NNUE_BIG =	nn-b1a57edbea57.nnue
NNUE_SMALL =	nn-baff1ede1f90.nnue
CATEGORIES =	games

HOMEPAGE =	https://stockfishchess.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

SITES =		https://github.com/official-stockfish/Stockfish/archive/
SITES.a =	https://tests.stockfishchess.org/api/nn/
DISTFILES =	sf_${V}.tar.gz
DISTFILES.a = 	${NNUE_BIG} ${NNUE_SMALL}
EXTRACT_ONLY =	${DISTFILES}

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
	cp ${DISTDIR}/${NNUE_BIG} ${WRKSRC}
	cp ${DISTDIR}/${NNUE_SMALL} ${WRKSRC}

pre-configure:
	sed -i 's,-O3,${CXXFLAGS},g' ${WRKSRC}/Makefile

.include <bsd.port.mk>
