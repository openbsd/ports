# $OpenBSD: Makefile,v 1.29 2019/07/12 20:44:01 sthen Exp $

COMMENT =	client library for the Redis key-value store

VERSION =	3.3.3
REVISION =	0
EPOCH =		1
DISTNAME =	redis-${VERSION}
CATEGORIES =	databases

HOMEPAGE =	http://redis-rb.keyvalue.org/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

MODRUBY_TEST =		rake

MODRUBY_TEST_ENV +=	LC_CTYPE="en_US.UTF-8" \
			REDIS_BINARY=${LOCALBASE}/sbin/redis-server

MODRUBY_TEST_TARGET =	run

TEST_DEPENDS +=		databases/redis

pre-configure:
	${SUBST_CMD} ${WRKSRC}/test/publish_subscribe_test.rb

post-install:
	@find ${PREFIX}/${GEM_LIB}/ -name '.git*' -print0 | xargs -r0 rm
	@rm ${PREFIX}/${GEM_LIB}/gems/${DISTNAME}/test/*.beforesubst

.include <bsd.port.mk>
