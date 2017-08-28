# $OpenBSD: Makefile,v 1.26 2017/08/28 05:21:22 dcoppa Exp $

COMMENT =	client library for the Redis key-value store

VERSION =	4.0.0
EPOCH =		0
DISTNAME =	redis-${VERSION}
CATEGORIES =	databases

HOMEPAGE =	http://redis-rb.keyvalue.org/

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

USE_GMAKE =		Yes

CONFIGURE_STYLE =	ruby gem

MODRUBY_TEST =		ruby

TEST_ENV +=		LC_CTYPE="en_US.UTF-8" \
			BINARY=${LOCALBASE}/sbin/redis-server

TEST_DEPENDS +=		databases/redis

pre-configure:
	${SUBST_CMD} ${WRKSRC}/makefile \
		${WRKSRC}/test/publish_subscribe_test.rb

post-install:
	@find ${PREFIX}/${GEM_LIB}/ -name '.git*' -print0 | xargs -r0 rm
	@rm ${PREFIX}/${GEM_LIB}/gems/${DISTNAME}/*.beforesubst \
		${PREFIX}/${GEM_LIB}/gems/${DISTNAME}/test/*.beforesubst

do-test:
	cd ${WRKBUILD} && ${SETENV} ${ALL_TEST_ENV} ${MAKE_PROGRAM} \
		${ALL_TEST_FLAGS} ${TEST_TARGET}

.include <bsd.port.mk>
