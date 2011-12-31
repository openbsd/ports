# $OpenBSD: Makefile,v 1.10 2011/12/31 22:15:04 kili Exp $

COMMENT =		efficient packed Unicode text type

DISTNAME =		text-0.11.1.5
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-deepseq>=1.1.0.0

.include <bsd.port.mk>
