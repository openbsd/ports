# $OpenBSD: Makefile,v 1.8 2011/04/11 14:46:29 kili Exp $

COMMENT =		efficient packed Unicode text type

DISTNAME =		text-0.11.0.6
REVISION =		0
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
