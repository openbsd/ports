# $OpenBSD: Makefile,v 1.8 2015/09/20 18:29:20 kili Exp $

COMMENT =		command line parser library

DISTNAME =		cmdargs-0.10.12
REVISION =		0
CATEGORIES =		devel
HOMEPAGE =		http://community.haskell.org/~ndm/cmdargs/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register
MODGHC_SETUP_CONF_ARGS =	-f -testprog

MODGHC_PACKAGE_KEY =	9lqlZ5T6W1J9RS7MO2uZX2

.include <bsd.port.mk>
