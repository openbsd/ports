# $OpenBSD: Makefile,v 1.6 2014/12/04 13:13:56 nigel Exp $

COMMENT =		command line parser library

DISTNAME =		cmdargs-0.9.5
REVISION =		2
CATEGORIES =		devel
HOMEPAGE =		http://community.haskell.org/~ndm/cmdargs/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register
MODGHC_SETUP_CONF_ARGS =	-f -testprog

.include <bsd.port.mk>
