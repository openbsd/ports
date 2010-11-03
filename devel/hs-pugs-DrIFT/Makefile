# $OpenBSD: Makefile,v 1.5 2010/11/03 22:13:39 kili Exp $

COMMENT =		DrIFT with pugs-specific rules

DISTNAME =		pugs-DrIFT-2.2.3.1
REVISION =		3
CATEGORIES =		devel
HOMEPAGE =		http://pugscode.org/

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c gmp m pthread util

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

LIB_DEPENDS =		::devel/hs-HsSyck \
			::devel/hs-stm
RUN_DEPENDS =		${LIB_DEPENDS}

.include <bsd.port.mk>
