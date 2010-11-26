# $OpenBSD: Makefile,v 1.6 2010/11/26 07:19:00 espie Exp $

COMMENT =		portable Haskell/POSIX layer for Pugs

DISTNAME =		pugs-compat-0.0.6.1
REVISION =		2
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

LIB_DEPENDS =		devel/hs-regex-base \
			devel/hs-regex-pcre-builtin \
			devel/hs-network \
			devel/hs-stm \
			devel/hs-stringtable-atom>=0.0.6.1
RUN_DEPENDS =		${LIB_DEPENDS}

.include <bsd.port.mk>
