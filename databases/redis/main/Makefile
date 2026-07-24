COMMENT =		persistent key-value database

DISTNAME =		redis-8.8.1

WANTLIB +=		c crypto ssl m pthread

# C11
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

MAKE_FLAGS =		BUILD_TLS=yes \
			CC="${CC}" \
			DEBUG="${DEBUG}" \
			DEBUG_FLAGS="${DEBUG}" \
			USE_JEMALLOC=no \
			OPT="" \
			OPTIMIZATION="" \
			V=1

MAKE_FLAGS +=		CCCOLOR= LINKCOLOR= SRCCOLOR= \
			BINCOLOR= MAKECOLOR= ENDCOLOR=

.include <bsd.port.mk>
