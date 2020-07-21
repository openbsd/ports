# $OpenBSD: Makefile,v 1.23 2020/07/21 14:23:03 jturner Exp $

BROKEN-sparc64 = compile error in boot.janet
BROKEN-mips64 =	compile error in system_test.c

COMMENT =	functional and imperative programming language
CATEGORIES =	lang

GH_ACCOUNT =	janet-lang
GH_PROJECT =	janet
GH_TAGNAME =	v1.11.0

SHARED_LIBS +=	janet		2.1 # 1.10

HOMEPAGE =	https://www.janet-lang.org/
MAINTAINER =	James Turner <james@calminferno.net>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c m pthread

# Needs TLS
COMPILER =	base-clang ports-gcc
COMPILER_LANGS =	c

USE_GMAKE =	Yes
MAKE_FLAGS =	PREFIX="${PREFIX}" CFLAGS="${CFLAGS} -fPIC" \
		JANET_LIBRARY="build/libjanet.so.${LIBjanet_VERSION}"

.include <bsd.port.mk>
