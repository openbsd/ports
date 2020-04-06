# $OpenBSD: Makefile,v 1.9 2020/04/06 20:24:53 cwen Exp $

COMMENT =	open source chess engine
PKGNAME =	stockfish-${GH_TAGNAME:S/^sf_//}
CATEGORIES =	games

GH_ACCOUNT =	official-stockfish
GH_PROJECT =	Stockfish
GH_TAGNAME =	sf_11

HOMEPAGE =	https://stockfishchess.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

# C++11
COMPILER =	base-clang ports-gcc

USE_GMAKE =	Yes
MAKE_FLAGS =	CC="${CC}" CXX="${CXX}"

# Some archs have platform-specific enhancements.
.if ${MACHINE_ARCH:Mamd64}
MAKE_ENV =	ARCH=x86-64
.elif ${MACHINE_ARCH:Mi386}
MAKE_ENV =	ARCH=x86-32
.elif ${MACHINE_ARCH:Marm}
MAKE_ENV =	ARCH=armv7
.elif ${MACHINE_ARCH:Mpowerpc}
MAKE_ENV =	ARCH=ppc-32
.elif ${MACHINE_ARCH:Maarch64} || ${MACHINE_ARCH:Malpha} || \
	${MACHINE_ARCH:Msparc64} || ${MACHINE_ARCH:Mmips64} || \
	${MACHINE_ARCH:Mmips64el}
MAKE_ENV =	ARCH=general-64
.else
MAKE_ENV =	ARCH=general-32
.endif

NO_TEST =	Yes

WRKSRC =	${WRKDIST}/src

pre-configure:
	sed -i 's,-O3,${CXXFLAGS},g' ${WRKSRC}/Makefile

.include <bsd.port.mk>
