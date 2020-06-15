# $OpenBSD: Makefile,v 1.21 2020/06/15 18:00:42 jturner Exp $

BROKEN-sparc64 = compile error in boot.janet
BROKEN-mips64 =	compile error in system_test.c

COMMENT =	functional and imperative programming language
CATEGORIES =	lang

GH_ACCOUNT =	janet-lang
GH_PROJECT =	janet
GH_TAGNAME =	v1.10.0

SHARED_LIBS +=	janet		2.0 # 0.1

HOMEPAGE =	https://www.janet-lang.org/
MAINTAINER =	James Turner <james@calminferno.net>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c m pthread

# Needs TLS
COMPILER =	base-clang ports-gcc
COMPILER_LANGS =	c

USE_GMAKE =	Yes
MAKE_FLAGS =	PREFIX="${PREFIX}" FLAGS="${CFLAGS}" \
		JANET_LIBRARY="build/libjanet.so.${LIBjanet_VERSION}"

.include <bsd.port.mk>
