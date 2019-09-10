# $OpenBSD: Makefile,v 1.16 2019/09/10 13:51:23 kili Exp $

COMMENT =		command line parser library

DISTNAME =		cmdargs-0.10.18
REVISION =		0
CATEGORIES =		devel
HOMEPAGE =		http://community.haskell.org/~ndm/cmdargs/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register
MODGHC_SETUP_CONF_ARGS =	-f -testprog

MODGHC_PACKAGE_KEY =	7Qr7HWgx9P71aSeNykhqeH

.include <bsd.port.mk>
