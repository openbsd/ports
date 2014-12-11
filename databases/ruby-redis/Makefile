# $OpenBSD: Makefile,v 1.18 2014/12/11 11:21:55 dcoppa Exp $

COMMENT =	client library for the Redis key-value store

VERSION =	3.2.0
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

MODRUBY_TEST_ENV +=	LC_CTYPE="en_US.UTF-8"

TEST_DEPENDS =		databases/redis

# Be sure to have a redis server running with the command:
# cd $(make show=WRKBUILD) && redis-server ./test/test.conf
TEST_IS_INTERACTIVE =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/test/publish_subscribe_test.rb

post-install:
	@find ${PREFIX}/${GEM_LIB}/ -name '.git*' -print0 | xargs -0 rm

.include <bsd.port.mk>
