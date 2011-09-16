# $OpenBSD: Makefile,v 1.2 2011/09/16 09:24:50 espie Exp $

COMMENT=		provides Word128, Word192 and various others large words

DISTNAME=		largeword-1.0.0
REVISION =		0
CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

.include <bsd.port.mk>
