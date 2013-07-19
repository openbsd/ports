# $OpenBSD: Makefile,v 1.7 2013/07/19 06:46:28 kili Exp $

COMMENT =		extra concurrency primitives

DISTNAME =		concurrent-extra-0.7.0.6
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-base-unicode-symbols>=0.1.1,<0.3 \
			devel/hs-stm>=2.1.2.1,<2.5 \
			devel/hs-unbounded-delays>=0.1,<0.2

# Needs --enable-test, which will probably set by ghc.port.mk soon
# (when I have some numbers about build times).
NO_TEST =		Yes

.include <bsd.port.mk>
