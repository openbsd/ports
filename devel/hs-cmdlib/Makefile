# $OpenBSD: Makefile,v 1.1.1.1 2012/05/07 18:47:35 kili Exp $

COMMENT =		command line parsing and online help

DISTNAME =		cmdlib-0.3.5
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		devel/hs-split \
			devel/hs-syb \
			devel/hs-transformers>=0.2.2

.include <bsd.port.mk>
