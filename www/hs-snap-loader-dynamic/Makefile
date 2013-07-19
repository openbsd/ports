# $OpenBSD: Makefile,v 1.6 2013/07/19 06:56:19 kili Exp $

COMMENT =		Snap framework dynamic loader

DISTNAME =		snap-loader-dynamic-0.10
CATEGORIES =		www
HOMEPAGE =		http://snapframework.com/

MAINTAINER =		Jim Razmus II <jim@openbsd.org>, \
			Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register


RUN_DEPENDS +=	devel/hs-directory-tree>=0.10,<0.12 \
		devel/hs-hint>=0.3.3.1,<0.4 \
		devel/hs-mtl>2.0,<2.2 \
		www/hs-snap-core>=0.9,<0.11
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
