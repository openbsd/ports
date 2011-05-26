# $OpenBSD: Makefile,v 1.1.1.1 2011/05/26 07:56:32 dcoppa Exp $

COMMENT =		alternative parser combinator libraries

DISTNAME =		polyparse-1.6
CATEGORIES =		textproc
HOMEPAGE =		http://code.haskell.org/~malcolm/polyparse/

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-text
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
