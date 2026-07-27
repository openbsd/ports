COMMENT=	serialization/RPC system

CATEGORIES =	devel

VERSION =	1.5.0
DIST_TUPLE =	github capnproto capnproto v${VERSION} .

HOMEPAGE =	https://capnproto.org

MAINTAINER =	Volker Schlecht <volker@openbsd.org>

# MIT
PERMIT_PACKAGE =Yes

COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		lang/tcl

MODTCL_VERSION =8.6

TEST_DEPENDS =	${MODTCL_RUN_DEPENDS}

WANTLIB += ${COMPILER_LIBCXX} c m

.include <bsd.port.mk>
