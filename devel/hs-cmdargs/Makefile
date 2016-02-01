# $OpenBSD: Makefile,v 1.12 2016/02/01 14:23:30 kili Exp $

COMMENT =		command line parser library

DISTNAME =		cmdargs-0.10.12
REVISION =		2
CATEGORIES =		devel
HOMEPAGE =		http://community.haskell.org/~ndm/cmdargs/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register
MODGHC_SETUP_CONF_ARGS =	-f -testprog

MODGHC_PACKAGE_KEY =	ItMd0xInfF4GSLXJQq7Wxz

.include <bsd.port.mk>
