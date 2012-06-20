# $OpenBSD: Makefile,v 1.2 2012/06/20 16:09:27 kili Exp $

COMMENT =		command line parsing and online help

DISTNAME =		cmdlib-0.3.5
REVISION =		0
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
RUN_DEPENDS +=		devel/hs-mtl>=2 \
			devel/hs-split \
			devel/hs-syb \
			devel/hs-transformers>=0.2.2

.include <bsd.port.mk>
