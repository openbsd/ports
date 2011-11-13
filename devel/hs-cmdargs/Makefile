# $OpenBSD: Makefile,v 1.1.1.1 2011/11/13 22:41:25 kili Exp $

COMMENT =		command line parser library

DISTNAME =		cmdargs-0.7
CATEGORIES =		devel
HOMEPAGE =		http://community.haskell.org/~ndm/cmdargs/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register
MODGHC_SETUP_CONF_ARGS =	-f -testprog

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		hs-transformers->=0.2,<0.3:devel/hs-transformers

.include <bsd.port.mk>
