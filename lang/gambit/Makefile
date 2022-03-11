BROKEN-riscv64=	gsi and gsi-script segfault at startup

COMMENT=	complete, efficient and reliable implementation of Scheme

V=		4.9.4
DISTNAME=	gambit-v${V:S/./_/g}
PKGNAME=	gambit-$V
API_V=		${V:R:S/./0/}00${V:E}
SUBST_VARS+=	API_V

CATEGORIES=	lang

HOMEPAGE=	https://www.gambitscheme.org

MAINTAINER=	Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

# LGPLv2.1 / Apachev2.0
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://www.gambitscheme.org/$V/
EXTRACT_SUFX=	.tgz

WANTLIB +=	c crypto m ssl util

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--disable-cplusplus \
		--disable-absolute-shared-libs \
		--docdir=${PREFIX}/share/doc/gambit/ \
		--includedir=${PREFIX}/include/gambit/ \
		--libdir=${PREFIX}/lib/gambit/ \
		--enable-c-opt="${CFLAGS}" \
		--enable-openssl \
		--enable-poll

CONFIGURE_ENV=	CC=${CC} CXX=${CXX} CFLAGS="${CFLAGS}" CXXFLAGS="${CXXFLAGS}"

WRKDIST=	${WRKDIR}/gambit-$V

MAKE_FILE=	${WRKSRC}/makefile

# On sparc64, gcc crashes with the default stack limit:
# "cc: Internal error: Illegal instruction" on _gambc.c
do-build:
	ulimit -s 12288 && cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} ${MAKE_FLAGS} -f ${MAKE_FILE} ${ALL_TARGET}

do-test:
	cd ${WRKSRC}/tests && ${SETENV} ${TEST_ENV} ${MAKE_PROGRAM} \
		${TEST_FLAGS} -f makefile ${TEST_TARGET}

.include <bsd.port.mk>

# It takes forever to build the package with Clang 13
.if ${CHOSEN_COMPILER} == "base-clang"
MAKE_ENV +=	CLANG_FLAGS=-O1
.endif
