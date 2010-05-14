# $OpenBSD: Makefile,v 1.2 2010/05/14 09:08:26 kili Exp $

COMMENT =		fully evaluate data structures

DISTNAME =		deepseq-1.1.0.0
PKGNAME =		hs-${DISTNAME}p0
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

.include <bsd.port.mk>
