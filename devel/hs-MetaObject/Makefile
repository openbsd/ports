# $OpenBSD: Makefile,v 1.5 2010/11/03 22:13:38 kili Exp $

COMMENT =		meta-object system for Haskell based on Perl 6

DISTNAME =		MetaObject-0.0.6
REVISION =		2
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

LIB_DEPENDS =		:hs-stringtable-atom->=0.0.6:devel/hs-stringtable-atom
RUN_DEPENDS =		${LIB_DEPENDS}

.include <bsd.port.mk>
