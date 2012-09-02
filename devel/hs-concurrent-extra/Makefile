# $OpenBSD: Makefile,v 1.2 2012/09/02 20:25:16 kili Exp $

COMMENT =		extra concurrency primitives

DISTNAME =		concurrent-extra-0.7.0.4
REVISION =		0
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-base-unicode-symbols>=0.1.1,<0.3 \
			devel/hs-stm>=2.1.2.1,<2.4 \
			devel/hs-unbounded-delays

.include <bsd.port.mk>
