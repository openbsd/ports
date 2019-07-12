# $OpenBSD: Makefile,v 1.4 2019/07/12 20:43:49 sthen Exp $

COMMENT =	convert between traditional and simplified Chinese

V =		1.0.5
DISTNAME =	opencc-$V

GH_ACCOUNT =	BYVoid
GH_PROJECT =	OpenCC
GH_TAGNAME =	ver.$V

SHARED_LIBS +=  opencc                    0.0 # 1.0

CATEGORIES =	converters textproc

HOMEPAGE =	https://opencc.byvoid.com/

MAINTAINER =	Anthony J. Bentley <anthony@anjbe.name>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake \
			lang/python
MODPY_RUNDEP =		No

CONFIGURE_ARGS =	-DOPENCC_PYTHON="${MODPY_BIN}"

WRKDIST =		${WRKDIR}/OpenCC-ver.$V

.include <bsd.port.mk>
