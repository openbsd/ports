# $OpenBSD: Makefile,v 1.5 2013/03/11 11:42:41 espie Exp $

COMMENT =		HTML/XML parsing library

DISTNAME =		tagsoup-0.12.8
REVISION =		0
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
