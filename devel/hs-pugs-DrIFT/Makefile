# $OpenBSD: Makefile,v 1.3 2010/07/17 13:43:37 kili Exp $

COMMENT =		DrIFT with pugs-specific rules

DISTNAME =		pugs-DrIFT-2.2.3.1
REVISION =		1
CATEGORIES =		devel
HOMEPAGE =		http://pugscode.org/

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c gmp m pthread util

MODULES =		lang/ghc converters/libiconv
MODGHC_BUILD =		cabal hackage haddock register

LIB_DEPENDS =		::devel/hs-HsSyck \
			::devel/hs-stm
RUN_DEPENDS =		${LIB_DEPENDS}

post-install:
	mv ${PREFIX}/share/${DISTNAME}/* ${PREFIX}/share/doc/${DISTNAME}
	rmdir ${PREFIX}/share/${DISTNAME}

.include <bsd.port.mk>
