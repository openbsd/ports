# $OpenBSD: Makefile,v 1.1.1.1 2010/06/20 09:41:19 kili Exp $

COMMENT =		meta-object system for Haskell based on Perl 6

DISTNAME =		MetaObject-0.0.6
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

LIB_DEOENDS =		:hs-stringtable-atom->=0.0.6:devel/hs-stringtable-atom

.include <bsd.port.mk>
