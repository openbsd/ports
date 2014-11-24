# $OpenBSD: Makefile,v 1.5 2014/11/24 16:07:59 kili Exp $

COMMENT =		shell-/perl- like (systems) programming in Haskell

DISTNAME =		shellish-0.1.4
REVISION =		2
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		devel/hs-mtl \
			devel/hs-unix-compat \
			devel/hs-strict

.include <bsd.port.mk>
