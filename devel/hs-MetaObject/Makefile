# $OpenBSD: Makefile,v 1.7 2010/11/26 07:19:00 espie Exp $

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

LIB_DEPENDS =		devel/hs-stringtable-atom>=0.0.6
RUN_DEPENDS =		${LIB_DEPENDS}

.include <bsd.port.mk>
