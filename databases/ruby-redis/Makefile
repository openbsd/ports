# $OpenBSD: Makefile,v 1.12 2013/10/26 23:55:35 jeremy Exp $

COMMENT =	client library for the Redis key-value store

VERSION =	3.0.5
DISTNAME =	redis-${VERSION}
REVISION =	0
CATEGORIES =	databases

HOMEPAGE =	http://redis-rb.keyvalue.org/

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

MODRUBY_TEST =		rake

MODRUBY_TEST_BIN =	LC_CTYPE="en_US.UTF-8" ${RAKE} --trace

TEST_DEPENDS =		databases/redis

# Be sure to have a redis server running with the command:
# cd $(make show=WRKBUILD) && redis-server ./test/test.conf
TEST_IS_INTERACTIVE =	Yes

post-install:
	@find ${PREFIX}/${GEM_LIB}/ -name '.git*' -print0 | xargs -0 rm

.include <bsd.port.mk>
