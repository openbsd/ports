# $OpenBSD: Makefile,v 1.13 2017/11/07 21:12:28 kili Exp $

COMMENT =		command line parser library

DISTNAME =		cmdargs-0.10.12
REVISION =		3
CATEGORIES =		devel
HOMEPAGE =		http://community.haskell.org/~ndm/cmdargs/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register
MODGHC_SETUP_CONF_ARGS =	-f -testprog

MODGHC_PACKAGE_KEY =	3taErrid1mMACVA3Ypz0vo

.include <bsd.port.mk>
