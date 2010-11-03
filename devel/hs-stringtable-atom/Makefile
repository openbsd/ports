# $OpenBSD: Makefile,v 1.4 2010/11/03 22:13:39 kili Exp $

COMMENT =		memoize strings as atoms

DISTNAME =		stringtable-atom-0.0.6.1
REVISION =		2
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

LIB_DEPENDS =		::devel/hs-binary
RUN_DEPENDS =		${LIB_DEPENDS}

.include <bsd.port.mk>
