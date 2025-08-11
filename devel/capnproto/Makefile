COMMENT=	serialization/RPC system

CATEGORIES =	devel

VERSION =	1.2.0
DIST_TUPLE =	github capnproto capnproto v${VERSION} .

HOMEPAGE =	https://capnproto.org

MAINTAINER =	Volker Schlecht <openbsd-ports@schlecht.dev>

# MIT
PERMIT_PACKAGE =	Yes

COMPILER =	base-clang ports-gcc
MODULES +=	devel/cmake

TEST_DEPENDS +=	lang/tcl/8.6

WANTLIB += ${COMPILER_LIBCXX} c m

.include <bsd.port.mk>
