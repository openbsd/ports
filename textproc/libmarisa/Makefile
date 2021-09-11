# $OpenBSD: Makefile,v 1.1 2021/09/11 07:55:18 inoguchi Exp $

COMMENT =	C++ library for MARISA matching algorithm

V =		0.2.6
PKGNAME =	libmarisa-${V}

GH_ACCOUNT =	s-yata
GH_PROJECT =	marisa-trie
GH_TAGNAME =	v${V}

SHARED_LIBS +=	marisa			0.0 # 0.0

CATEGORIES =	textproc

MAINTAINER =	Yifei Zhan <openbsd@zhan.science>

# dual license: either BSD 2-clause or LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15
CONFIGURE_STYLE =	autoreconf
CONFIGURE_ARGS =	CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

.if ${MACHINE_ARCH} == "amd64"
CONFIGURE_ARGS +=	--enable-sse2
.endif

.include <bsd.port.mk>
