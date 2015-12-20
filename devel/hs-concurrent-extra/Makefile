# $OpenBSD: Makefile,v 1.10 2015/12/20 11:25:33 kili Exp $

COMMENT =		extra concurrency primitives

DISTNAME =		concurrent-extra-0.7.0.9
REVISION =		1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	9OFxPvomtrN1KY01buq4VI

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-stm>=2.1.2.1,<2.5 \
			devel/hs-unbounded-delays>=0.1,<0.2

# Needs --enable-test, which will probably set by ghc.port.mk soon
# (when I have some numbers about build times).
NO_TEST =		Yes

.include <bsd.port.mk>
