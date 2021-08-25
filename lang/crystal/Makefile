# $OpenBSD: Makefile,v 1.15 2021/08/25 12:07:54 jcs Exp $

# Hopefully ${CLANG_ARCHS} at some point.
ONLY_FOR_ARCHS=	amd64

V =		1.1.1
V_SHARDS =	0.15.0
V_MOLINILLO =	0.2.0
COMMENT =	statically typed object oriented language
DISTNAME =	crystal-${V}
CATEGORIES =	lang
REVISION =	1

HOMEPAGE =	https://crystal-lang.org/
MAINTAINER =	joshua stein <jcs@jcs.org>

# Apache 2.0
PERMIT_PACKAGE = Yes

WANTLIB +=	${COMPILER_LIBCXX} c event_core event_extra gc iconv
WANTLIB +=	m pcre crypto ssl yaml-0 z

#
# crystal-X-OpenBSDX.X.tar.gz is an archive of a bootstrap compiler object
# (crystal.o) which can be cross-compiled on another platform by installing the
# current version of Crystal there, then checking out the source for that
# version and running:
#
# 	make crystal FLAGS="--cross-compile --target amd64-unknown-openbsd6.9"
#
# The result will be built at .build/crystal.o
#

MASTER_SITES =	https://github.com/crystal-lang/crystal/archive/
MASTER_SITES0 =	https://jcs.org/distfiles/
MASTER_SITES1 =	https://github.com/crystal-lang/shards/archive/
MASTER_SITES2 =	https://github.com/crystal-lang/crystal-molinillo/archive/
DISTFILES =	crystal-${V}{${V}}.tar.gz \
		crystal-${V}-OpenBSD6.9.tar.gz:0 \
		shards-${V}{v${V_SHARDS}}.tar.gz:1 \
		crystal-molinillo-${V}{v${V_MOLINILLO}}.tar.gz:2

# Build requires llvm-config from ports, not from base
COMPILER =	ports-clang
LLVM_CONFIG =	${LOCALBASE}/bin/llvm-config

BUILD_DEPENDS =	devel/llvm
RUN_DEPENDS =	devel/llvm,-main

LIB_DEPENDS =	converters/libiconv \
		devel/boehm-gc \
		devel/libevent2 \
		devel/pcre \
		devel/libyaml

USE_GMAKE =	Yes
ALL_TARGET =	crystal release=1
TEST_TARGET =	smoke_test

post-extract:
	mv ${WRKDIR}/shards-${V_SHARDS} ${WRKSRC}/
	mv ${WRKDIR}/crystal-molinillo-${V_MOLINILLO} ${WRKSRC}/

do-build:
	mkdir -p ${WRKSRC}/.build
	# Link the compiler from the pre-built bootstrap object
	cd ${WRKSRC} && CXX=${CXX} LLVM_CONFIG=${LLVM_CONFIG} \
		${MAKE_PROGRAM} llvm_ext
	cd ${WRKSRC} && ${CXX} -rdynamic -o ${WRKBUILD}/.build/crystal \
		${WRKSRC}/../crystal.o \
		${WRKSRC}/src/llvm/ext/llvm_ext.o \
		-L${LOCALBASE}/lib \
		`(${LLVM_CONFIG} --libs --system-libs --ldflags 2> /dev/null)` \
		-lz -lpcre -lgc -lpthread -levent_core -levent_extra -lssl \
		-lcrypto -liconv -lc++abi
	cd ${WRKSRC}/shards-${V_SHARDS} && \
		env CRYSTAL_PATH=lib:${WRKSRC}/src \
		CRYSTAL=${WRKSRC}/.build/crystal \
		${MAKE_PROGRAM}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/crystal
	${INSTALL_PROGRAM} ${WRKSRC}/.build/crystal ${PREFIX}/libexec/crystal
	cd ${WRKSRC}/src && pax -rw . ${PREFIX}/lib/crystal/
	${INSTALL_PROGRAM} ${WRKSRC}/shards-${V_SHARDS}/bin/shards \
		${PREFIX}/bin
	${SUBST_PROGRAM} ${FILESDIR}/crystal ${PREFIX}/bin/crystal
	@chmod ${BINMODE} ${PREFIX}/bin/crystal

do-test:
	cd ${WRKSRC}; \
		ulimit -s 5120 -d 4096000 && \
		${MAKE_PROGRAM} ${TEST_TARGET}

.include <bsd.port.mk>
