# $OpenBSD: Makefile,v 1.9 2020/08/03 20:36:28 gkoehler Exp $

# Hopefully ${CLANG_ARCHS} at some point.
ONLY_FOR_ARCHS=	amd64

V =		0.30.1
V_SHARDS =	0.9.0
COMMENT =	statically typed object oriented language
DISTNAME =	crystal-${V}
CATEGORIES =	lang

HOMEPAGE =	https://crystal-lang.org/
MAINTAINER =	Wesley Moxam <wes@wmoxam.com>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c event_core event_extra gc iconv
WANTLIB += m pcre yaml

# Requires a bootstrap compiler object (crystal.o) which can be built by:
# .build/crystal build --cross-compile \
# 	--target amd64-unknown-openbsd`uname -r` src/compiler/crystal.cr \
# 	-D i_know_what_im_doing
MASTER_SITES =	https://github.com/crystal-lang/crystal/archive/
MASTER_SITES0 =	https://wmoxam.com/public/
MASTER_SITES1 =	https://github.com/crystal-lang/shards/archive/
DISTFILES =	crystal-${V}{${V}}.tar.gz \
		crystal-${V}-OpenBSD6.5.tar.gz:0 \
		shards-${V}{v${V_SHARDS}}.tar.gz:1

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

NO_TEST =	Yes

do-build:
	mkdir -p ${WRKSRC}/.build
	# Link the compiler from the pre-built bootstrap object
	cd ${WRKSRC} && CXX=${CXX} LLVM_CONFIG=${LLVM_CONFIG} \
		${MAKE_PROGRAM} llvm_ext libcrystal
	cd ${WRKSRC} && ${CXX} -rdynamic -o ${WRKBUILD}/.build/crystal \
		${WRKSRC}/../crystal.o \
		${WRKSRC}/src/llvm/ext/llvm_ext.o \
		${WRKSRC}/src/ext/sigfault.o \
		-L${LOCALBASE}/lib \
		`(${LLVM_CONFIG} --libs --system-libs --ldflags 2> /dev/null)` \
		-lz -lpcre -lgc -lpthread -levent_core -levent_extra -lssl \
		-lcrypto -liconv
	# Use the compiler to re-compile the compiler
	touch ${WRKSRC}/src/compiler/crystal.cr
	cd ${WRKSRC}; \
		ulimit -s 5120 -d 4096000 && \
		CRYSTAL_CONFIG_PATH="lib:${TRUEPREFIX}/lib/crystal" \
		CXX=${CXX} LLVM_CONFIG=${LLVM_CONFIG} \
		${MAKE_PROGRAM} ${ALL_TARGET}
	cd ${WRKSRC}/../shards-${V_SHARDS} && \
		${MAKE_PROGRAM} CRYSTAL=${WRKSRC}/.build/crystal \
		CRYSTAL_PATH=${WRKSRC}/src CRFLAGS=--release

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/crystal
	${INSTALL_PROGRAM} ${WRKSRC}/.build/crystal ${PREFIX}/bin
	cd ${WRKSRC}/src && pax -rw . ${PREFIX}/lib/crystal/
	${INSTALL_PROGRAM} ${WRKSRC}/../shards-${V_SHARDS}/bin/shards \
		${PREFIX}/bin

.include <bsd.port.mk>
