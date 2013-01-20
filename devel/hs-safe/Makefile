# $OpenBSD: Makefile,v 1.3 2013/01/20 18:03:29 kili Exp $

COMMENT =		safe wrappers for some base functions

DISTNAME =		safe-0.3.2
REVISION =		1
CATEGORIES =		devel
HOMEPAGE =		http://community.haskell.org/~ndm/safe/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

.include <bsd.port.mk>
