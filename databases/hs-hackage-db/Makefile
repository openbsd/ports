# $OpenBSD: Makefile,v 1.1.1.1 2013/01/25 13:34:48 kili Exp $

COMMENT =		access to the Hackage database via Data.Map

DISTNAME =		hackage-db-1.4
CATEGORIES =		databases

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-tar>=0.4

.include <bsd.port.mk>
