# $OpenBSD: Makefile,v 1.14 2018/01/22 21:59:54 kili Exp $

COMMENT =		command line parser library

DISTNAME =		cmdargs-0.10.18
CATEGORIES =		devel
HOMEPAGE =		http://community.haskell.org/~ndm/cmdargs/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register
MODGHC_SETUP_CONF_ARGS =	-f -testprog

MODGHC_PACKAGE_KEY =	7Qr7HWgx9P71aSeNykhqeH

.include <bsd.port.mk>
