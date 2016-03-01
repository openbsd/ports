# $OpenBSD: Makefile,v 1.13 2016/03/01 12:22:09 dcoppa Exp $

COMMENT =		client library for the Redis datastore

DISTNAME =		hedis-0.7.1
CATEGORIES =		databases
HOMEPAGE =		https://github.com/informatikr/hedis

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	FhDP0YelAAIDgxFRFiTscT

MODGHC_SETUP_CONF_ARGS =--enable-tests

RUN_DEPENDS +=		devel/hs-BoundedChan>=1.0 \
			textproc/hs-attoparsec>=0.12 \
			textproc/hs-bytestring-lexing>=0.5 \
			devel/hs-mtl>=2.0,<3.0 \
			devel/hs-network>=2.0 \
			databases/hs-resource-pool>=0.2 \
			devel/hs-vector>=0.9

BUILD_DEPENDS +=	${RUN_DEPENDS} \
			devel/hs-HUnit \
			devel/hs-test-framework \
			devel/hs-test-framework-hunit

# Be sure to have a redis server running on localhost
TEST_IS_INTERACTIVE =	Yes

TEST_DEPENDS =		databases/redis

do-test:
	@${MODGHC_TEST_TARGET}
	@cat ${WRKSRC}/dist/test/${DISTNAME}-hedis-test.log

.include <bsd.port.mk>
