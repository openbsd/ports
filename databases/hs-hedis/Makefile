# $OpenBSD: Makefile,v 1.3 2014/03/27 11:25:16 dcoppa Exp $

COMMENT =		client library for the Redis datastore

DISTNAME =		hedis-0.6.5
CATEGORIES =		databases
HOMEPAGE =		https://github.com/informatikr/hedis

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_SETUP_CONF_ARGS =--enable-tests

RUN_DEPENDS +=		textproc/hs-attoparsec>=0.10 \
			devel/hs-BoundedChan>=1.0,<1.1 \
			textproc/hs-bytestring-lexing>=0.4,<0.5 \
			devel/hs-mtl>=2.0,<3.0 \
			devel/hs-network>=2.0,<3.0 \
			databases/hs-resource-pool>=0.2,<0.3 \
			devel/hs-vector>=0.9,<0.11

BUILD_DEPENDS +=	${RUN_DEPENDS} \
			devel/hs-HUnit>=1.2,<1.3 \
			devel/hs-test-framework \
			devel/hs-test-framework-hunit

# Be sure to have a redis server running on localhost
TEST_IS_INTERACTIVE =	Yes

TEST_DEPENDS =		databases/redis

do-test:
	@${MODGHC_TEST_TARGET}
	@cat ${WRKSRC}/dist/test/${DISTNAME}-hedis-test.log

.include <bsd.port.mk>
