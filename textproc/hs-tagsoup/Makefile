# $OpenBSD: Makefile,v 1.8 2015/12/20 11:34:52 kili Exp $

COMMENT =		HTML/XML parsing library

DISTNAME =		tagsoup-0.13.3
REVISION =		0
CATEGORIES =		devel textproc
HOMEPAGE =		http://community.haskell.org/~ndm/tagsoup/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	39qxDCQm2OTILqruIm8act

MODGHC_SETUP_CONF_ARGS =	-f download

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-network \
			devel/hs-text

.include <bsd.port.mk>
