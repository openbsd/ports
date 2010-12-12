# $OpenBSD: Makefile,v 1.6 2010/12/12 16:29:51 kili Exp $

COMMENT =		xhtml templating system

DISTNAME =		heist-0.2.4
CATEGORIES =		textproc

MAINTAINER =		Jim Razmus II <jim@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-MonadCatchIO-transformers \
			devel/hs-directory-tree \
			devel/hs-monads-fd \
			devel/hs-transformers \
			textproc/hs-attoparsec \
			textproc/hs-hexpat
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
