# $OpenBSD: Makefile,v 1.5 2013/05/04 21:17:17 kili Exp $

COMMENT =		Snap framework dynamic loader

DISTNAME =		snap-loader-dynamic-0.9.0.1
REVISION =		2
CATEGORIES =		www
HOMEPAGE =		http://snapframework.com/

MAINTAINER =		Jim Razmus II <jim@openbsd.org>, \
			Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register


RUN_DEPENDS +=	devel/hs-directory-tree>=0.10,<0.11 \
		devel/hs-hint>=0.3.3.1,<0.4 \
		devel/hs-mtl>2.0,<2.2 \
		www/hs-snap-core>=0.9,<0.10
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
