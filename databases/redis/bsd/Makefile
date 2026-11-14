COMMENT =		persistent key-value database (BSD-licensed version)

PORTROACH =		limit:^7\.2\.
DISTNAME =		redis-7.2.17

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

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/redis
	${SUBST_DATA} ${WRKSRC}/redis.conf \
			${PREFIX}/share/examples/redis/redis.conf
	${SUBST_DATA} ${WRKSRC}/sentinel.conf \
			${PREFIX}/share/examples/redis/sentinel.conf

.include <bsd.port.mk>
