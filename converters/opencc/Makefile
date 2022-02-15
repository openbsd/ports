# $OpenBSD: Makefile,v 1.8 2022/02/15 12:32:23 bentley Exp $

COMMENT =	convert between traditional and simplified Chinese

V =		1.1.3
DISTNAME =	opencc-$V

GH_ACCOUNT =	BYVoid
GH_PROJECT =	OpenCC
GH_TAGNAME =	ver.$V

SHARED_LIBS +=	opencc                    0.0 # 1.0

CATEGORIES =	converters textproc

HOMEPAGE =	https://opencc.byvoid.com/

MAINTAINER =	Anthony J. Bentley <anthony@anjbe.name>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m marisa

COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake \
			lang/python

LIB_DEPENDS =		textproc/libmarisa,-main

CONFIGURE_ARGS =	-DUSE_SYSTEM_MARISA=ON \
			-DCMAKE_CXX_FLAGS="-I${LOCALBASE}/include -L${LOCALBASE}/lib"

MODPY_RUNDEP =		No

WRKDIST =		${WRKDIR}/OpenCC-ver.$V

.include <bsd.port.mk>
