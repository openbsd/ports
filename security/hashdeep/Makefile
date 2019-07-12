# $OpenBSD: Makefile,v 1.5 2019/07/12 20:49:02 sthen Exp $

COMMENT =		tools to compute hashes recursively

GH_ACCOUNT =		jessek
GH_PROJECT =		hashdeep
GH_TAGNAME =		v4.4
REVISION =		0

CATEGORIES =		security

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# Public domain, and the code for Tiger is GPLv2.
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

# C++11 nullptr
COMPILER = base-clang ports-clang ports-gcc

USE_GMAKE =		Yes
CONFIGURE_STYLE =	autoreconf

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

NO_TEST =		Yes

CXXFLAGS =		-std=c++11

.include <bsd.port.mk>
