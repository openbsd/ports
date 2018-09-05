# $OpenBSD: Makefile,v 1.1.1.1 2018/09/05 18:11:26 bcallah Exp $

ONLY_FOR_ARCHS =	${LLVM_ARCHS}

COMMENT =	actor-model, capabilities-secure, high performance language
DISTNAME =	${GH_PROJECT}-0.24.4.1
CATEGORIES =	lang

# OpenBSD support officially comes out in 0.24.5
GH_ACCOUNT =	ponylang
GH_PROJECT =	ponyc
#GH_TAGNAME =	0.24.5
GH_COMMIT =	b73b4c4c5b13530e39918fc11ef1643c5736b680

HOMEPAGE =	https://www.ponylang.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

# Also links -lLLVM-6.0
WANTLIB += ${COMPILER_LIBCXX} c curses execinfo m z

# C11, clang only
COMPILER =	base-clang ports-clang

BUILD_DEPENDS =	${RUN_DEPENDS} \
		devel/pcre2

LIB_DEPENDS =	devel/libexecinfo

RUN_DEPENDS =	devel/llvm>=6.0,<6.1

USE_GMAKE =	Yes
MAKE_ENV =	verbose=true default_pic=true

.if ${MACHINE_ARCH:Marm} || ${MACHINE_ARCH:Mi386}
MAKE_ENV +=	bits=32
.else
MAKE_ENV +=	bits=64
.endif

.include <bsd.port.mk>
