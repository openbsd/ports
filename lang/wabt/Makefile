# $OpenBSD: Makefile,v 1.2 2019/02/04 14:13:04 rapha Exp $

COMMENT =	WebAssembly binary toolkit

GH_ACCOUNT =	WebAssembly
GH_PROJECT =	wabt
GH_TAGNAME =	1.0.8

CATEGORIES =	lang

MAINTAINER =	Fabian Raetz <fabian.raetz@gmail.com>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB = ${COMPILER_LIBCXX} c m

# C++11
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

CONFIGURE_ARGS =	-DBUILD_TESTS=OFF \
			-DRUN_RE2C=OFF

NO_TEST =	Yes

.include <bsd.port.mk>
