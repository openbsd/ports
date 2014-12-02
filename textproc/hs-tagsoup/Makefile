# $OpenBSD: Makefile,v 1.6 2014/12/02 20:45:23 kili Exp $

COMMENT =		HTML/XML parsing library

DISTNAME =		tagsoup-0.12.8
REVISION =		1
CATEGORIES =		devel textproc
HOMEPAGE =		http://community.haskell.org/~ndm/tagsoup/

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_SETUP_CONF_ARGS =	-f download

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-mtl \
			devel/hs-network \
			devel/hs-text

.include <bsd.port.mk>
