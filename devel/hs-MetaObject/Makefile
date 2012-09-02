# $OpenBSD: Makefile,v 1.10 2012/09/02 21:19:01 kili Exp $

COMMENT =		meta-object system for Haskell based on Perl 6

DISTNAME =		MetaObject-0.0.6.20110925
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-stringtable-atom>=0.0.6

.include <bsd.port.mk>
