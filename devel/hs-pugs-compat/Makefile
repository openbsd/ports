# $OpenBSD: Makefile,v 1.7 2011/04/11 14:46:52 kili Exp $

COMMENT =		portable Haskell/POSIX layer for Pugs

DISTNAME =		pugs-compat-0.0.6.1
REVISION =		3
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-regex-base \
			devel/hs-regex-pcre-builtin \
			devel/hs-network \
			devel/hs-stm \
			devel/hs-stringtable-atom>=0.0.6.1 \
			devel/hs-syb

.include <bsd.port.mk>
