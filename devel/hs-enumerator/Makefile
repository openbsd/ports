# $OpenBSD: Makefile,v 1.2 2010/12/13 19:50:38 jasper Exp $

COMMENT=		implementation of Oleg Kiselyov's left-fold enumerators

DISTNAME=		enumerator-0.4.4
CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

# Set text-names-broken if hs-text goes >= 0.11

RUN_DEPENDS =		devel/hs-text \
			devel/hs-transformers
BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
