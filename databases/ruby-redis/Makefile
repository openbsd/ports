# $OpenBSD: Makefile,v 1.22 2016/04/19 07:39:16 dcoppa Exp $

COMMENT =	client library for the Redis key-value store

VERSION =	3.3.0
EPOCH =		0
DISTNAME =	redis-${VERSION}
CATEGORIES =	databases

HOMEPAGE =	http://redis-rb.keyvalue.org/

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

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
	@find ${PREFIX}/${GEM_LIB}/ -name '.git*' -print0 | xargs -0 rm
	@rm ${PREFIX}/${GEM_LIB}/gems/${DISTNAME}/test/*.beforesubst

.include <bsd.port.mk>
