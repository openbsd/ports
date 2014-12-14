# $OpenBSD: Makefile,v 1.7 2014/12/14 10:29:59 kili Exp $

COMMENT =		command line parser library

DISTNAME =		cmdargs-0.10.12
CATEGORIES =		devel
HOMEPAGE =		http://community.haskell.org/~ndm/cmdargs/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register
MODGHC_SETUP_CONF_ARGS =	-f -testprog

.include <bsd.port.mk>
