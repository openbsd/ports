# $OpenBSD: Makefile,v 1.9 2019/07/06 15:00:03 jca Exp $

# see https://github.com/ponylang/ponyc/issues/3207
#     https://github.com/ponylang/ponyc/pull/3034
BROKEN =	no support for LLVM-8.0.0

ONLY_FOR_ARCHS =	aarch64 amd64 arm i386

COMMENT =	actor-model, capabilities-secure, high performance language
CATEGORIES =	lang

GH_ACCOUNT =	ponylang
GH_PROJECT =	ponyc
GH_TAGNAME =	0.28.1

HOMEPAGE =	https://www.ponylang.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

# Also links -lLLVM-7.0
WANTLIB += ${COMPILER_LIBCXX} c curses execinfo m z

# C11, clang only
COMPILER =	base-clang ports-clang

BUILD_DEPENDS =	${RUN_DEPENDS} \
		devel/pcre2

LIB_DEPENDS =	devel/libexecinfo

RUN_DEPENDS =	devel/llvm>=7.0,<7.1

USE_GMAKE =	Yes
MAKE_ENV =	verbose=true \
		LLVM_CONFIG="${LOCALBASE}/bin/llvm-config"

.if ${MACHINE_ARCH:Marm} || ${MACHINE_ARCH:Mi386}
MAKE_ENV +=	bits=32
.else
MAKE_ENV +=	bits=64
.endif

SUBST_VARS +=	GH_TAGNAME

.include <bsd.port.mk>
