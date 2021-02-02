# $OpenBSD: Makefile,v 1.1.1.1 2021/02/02 16:07:54 sebastia Exp $

COMMENT =	lightning fast steghide cracker

GH_ACCOUNT =	RickdeJager
GH_PROJECT =	stegseek
GH_TAGNAME =	v0.5
EPOCH =		0

CATEGORIES =	security

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += 		${COMPILER_LIBCXX} c m z jpeg mcrypt mhash

COMPILER =		base-clang ports-gcc 

MODULES =               devel/cmake

LIB_DEPENDS +=		graphics/jpeg \
			security/libmcrypt \
			security/mhash

CONFIGURE_ARGS =        -DCMAKE_CXX_FLAGS="-I${LOCALBASE}/include ${CXXFLAGS}" \
			-DCMAKE_EXE_LINKER_FLAGS="-L${LOCALBASE}/lib ${LDFLAGS}"

.include <bsd.port.mk>
