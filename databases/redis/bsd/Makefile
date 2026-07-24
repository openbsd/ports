COMMENT =		persistent key-value database (BSD-licensed version)

PORTROACH =		limit:^6\.
DISTNAME =		redis-6.2.23

# keep above 7.9-stable
REVISION =		0

WANTLIB +=		c crypto ssl m pthread

# C11
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

# >=9 support was added after the license change
MODTCL_VERSION =	8.6

MAKE_FLAGS =		BUILD_TLS=yes \
			CC="${CC}" \
			DEBUG="${DEBUG}" \
			DEBUG_FLAGS="${DEBUG}" \
			USE_JEMALLOC=no \
			OPT="" \
			OPTIMIZATION="" \
			V=1

.include <bsd.port.mk>
