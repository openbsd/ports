# $OpenBSD: Makefile,v 1.1.1.1 2010/06/20 09:45:28 kili Exp $

COMMENT =		portable Haskell/POSIX layer for Pugs

DISTNAME =		pugs-compat-0.0.6.1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

LIB_DEPENDS =		::devel/hs-regex-base \
			::devel/hs-regex-pcre-builtin \
			::devel/hs-network \
			::devel/hs-stm \
			:hs-stringtable-atom->=0.0.6.1:devel/hs-stringtable-atom

.include <bsd.port.mk>
