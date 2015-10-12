# $OpenBSD: Makefile,v 1.22 2015/10/12 21:38:47 kili Exp $

BROKEN =		will be removed soon

COMMENT =		hashed file storage support code for Haskell

DISTNAME =		hashed-storage-0.5.11
CATEGORIES =		devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		archivers/hs-zlib \
			devel/hs-dataenc \
			devel/hs-extensible-exceptions \
			devel/hs-mmap>=0.5,<0.6 \
			devel/hs-mtl
BUILD_DEPENDS =		${RUN_DEPENDS}

NO_TEST =		Yes

.include <bsd.port.mk>
