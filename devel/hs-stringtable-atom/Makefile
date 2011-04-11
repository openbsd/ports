# $OpenBSD: Makefile,v 1.6 2011/04/11 14:46:52 kili Exp $

COMMENT =		memoize strings as atoms

DISTNAME =		stringtable-atom-0.0.6.1
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
RUN_DEPENDS =		devel/hs-binary \
			devel/hs-syb

.include <bsd.port.mk>
