# $OpenBSD: Makefile,v 1.37 2019/09/08 17:40:02 juanfra Exp $

COMMENT=	complete, efficient and reliable implementation of Scheme

V=		4.9.3
REVISION=	0
DISTNAME=	gambit-v${V:S/./_/g}
PKGNAME=	gambit-$V
API_V=		${V:R:S/./0/}00${V:E}
SUBST_VARS+=	API_V

CATEGORIES=	lang

HOMEPAGE=	http://dynamo.iro.umontreal.ca/wiki/index.php/Main_Page

MAINTAINER=	Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

# LGPLv2.1 / Apachev2.0
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://www.iro.umontreal.ca/~gambit/download/gambit/v${V:R}/source/
EXTRACT_SUFX=	.tgz

WANTLIB +=	c crypto m ssl util

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

MAKE_FILE=	${WRKSRC}/makefile

# On sparc64, gcc crashes with the default stack limit:
# "cc: Internal error: Illegal instruction" on _gambc.c
do-build:
	ulimit -s 12288 && cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} ${MAKE_FLAGS} -f ${MAKE_FILE} ${ALL_TARGET}

do-test:
	cd ${WRKSRC}/tests && ${SETENV} ${TEST_ENV} ${MAKE_PROGRAM} \
		${TEST_FLAGS} -f makefile ${TEST_TARGET}

# alpha: "cc1: out of memory allocating 1608 bytes"
# hppa: "virtual memory exhausted: Cannot allocate memory" (in a system with 2GB RAM)
# macppc: cc1: out of memory allocating 808 bytes
# sparc64: "virtual memory exhausted: Cannot allocate memory" (ports cluster)
.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "hppa" || ${MACHINE_ARCH} == "powerpc" || ${MACHINE_ARCH} == "sparc64"
CFLAGS += -O0
.endif

.include <bsd.port.mk>
