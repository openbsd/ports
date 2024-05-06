COMMENT =	convert between traditional and simplified Chinese

V =		1.1.7
DISTNAME =	opencc-$V
REVISION =	0

GH_ACCOUNT =	BYVoid
GH_PROJECT =	OpenCC
GH_TAGNAME =	ver.$V

SHARED_LIBS +=	opencc                    1.0 # 2.0

CATEGORIES =	converters textproc

HOMEPAGE =	https://opencc.byvoid.com/

MAINTAINER =	Yifei Zhan <openbsd@zhan.science>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m marisa

COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake \
			lang/python

LIB_DEPENDS =		textproc/libmarisa,-main

CONFIGURE_ARGS =	-DUSE_SYSTEM_MARISA=ON

CXXFLAGS +=		-I${LOCALBASE}/include
MODCMAKE_LDFLAGS +=	-L${LOCALBASE}/lib

MODPY_RUNDEP =		No

WRKDIST =		${WRKDIR}/OpenCC-ver.$V

.include <bsd.port.mk>
