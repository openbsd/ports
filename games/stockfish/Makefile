# $OpenBSD: Makefile,v 1.2 2018/02/04 22:03:36 bcallah Exp $

V =		9
COMMENT =	open source chess engine
DISTNAME =	stockfish-${V}-src
PKGNAME =	stockfish-${V}
EXTRACT_SUFX =	.zip
CATEGORIES =	games

HOMEPAGE =	https://stockfishchess.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

MASTER_SITES =	https://stockfish.s3.amazonaws.com/

# C++11
COMPILER =	base-clang ports-gcc ports-clang

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
MAKE_ENV =	ARCH=generic-64
.else
MAKE_ENV =	ARCH=generic-32
.endif

NO_TEST =	Yes

WRKDIST =	${WRKDIR}/src

pre-configure:
	sed -i 's,-O3,${CXXFLAGS},g' ${WRKSRC}/Makefile

.include <bsd.port.mk>
