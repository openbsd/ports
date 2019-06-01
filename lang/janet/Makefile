# $OpenBSD: Makefile,v 1.6 2019/06/01 01:40:14 jturner Exp $

COMMENT =	functional and imperative programming language
CATEGORIES =	lang

GH_ACCOUNT =	janet-lang
GH_PROJECT =	janet
GH_TAGNAME =	v0.6.0

SHARED_LIBS +=	janet		1.0 # 0.0

HOMEPAGE =	https://www.janet-lang.org/
MAINTAINER =	James Turner <james@calminferno.net>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m

# Needs TLS
COMPILER =	base-clang ports-gcc
COMPILER_LANGS =	c

USE_GMAKE =	Yes
MAKE_FLAGS =	PREFIX="${PREFIX}" FLAGS="${CFLAGS}" \
		JANET_LIBRARY="build/libjanet.so.${LIBjanet_VERSION}"

.include <bsd.port.mk>
