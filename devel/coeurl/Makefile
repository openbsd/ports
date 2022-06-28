COMMENT =	simple async wrapper around CURL for C++
CATEGORIES =	devel

V =		v0.2.0
DISTNAME =	coeurl-${V}
PKGNAME =	${DISTNAME:S/v//}

SHARED_LIBS +=  coeurl                    0.0 # 0.2.0

MASTER_SITES =	https://nheko.im/nheko-reborn/coeurl/-/archive/${V}/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} curl event_core event_pthreads m

MODULES =	devel/meson

# C++17
COMPILER =	base-clang ports-gcc

LIB_DEPENDS =	devel/libevent2 \
		devel/spdlog \
		net/curl

.include <bsd.port.mk>
