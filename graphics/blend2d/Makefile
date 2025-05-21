COMMENT =		2d vector graphics engine

DISTNAME =	blend2d-0.12.0

CATEGORIES =	graphics
SHARED_LIBS =	blend2d	0.0
# BSD
PERMIT_PACKAGE =	Yes

HOMEPAGE =	https://blend2d.com/
SITES =		${HOMEPAGE}download/

MODULES =	devel/cmake

WRKDIST =	${WRKDIR}/blend2d
# C++20
COMPILER =	base-clang ports-clang
# XXX provides a bundled asmjit
WANTLIB += ${COMPILER_LIBCXX} c m

.include <bsd.port.mk>
