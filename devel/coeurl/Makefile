COMMENT =	simple async wrapper around CURL for C++
CATEGORIES =	devel

V =		v0.3.0
DISTNAME =	coeurl-${V}
PKGNAME =	${DISTNAME:S/v//}
REVISION =	0

SHARED_LIBS +=  coeurl                    0.1 # 0.2.0

SITES =		https://nheko.im/nheko-reborn/coeurl/-/archive/${V}/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} curl event_core event_pthreads fmt spdlog

MODULES =	devel/meson

# C++17
COMPILER =	base-clang ports-gcc

LIB_DEPENDS =	devel/libevent2 \
		devel/spdlog \
		net/curl

# Run-time dependency doctest found: NO (tried pkgconfig and cmake)
#CONFIGURE_ARGS +=	-Dtests=true

TEST_IS_INTERACTIVE =	manually run ${WRKSRC}/scripts/run{,_tls}_testserver.sh

.include <bsd.port.mk>
