# $OpenBSD: Makefile,v 1.4 2013/01/20 17:56:05 kili Exp $

COMMENT =		enumerator interface for zlib compression

DISTNAME =		zlib-enum-0.2.2.1
REVISION =		1
CATEGORIES =		archivers devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		archivers/hs-zlib-bindings>=0.1,<0.2 \
			devel/hs-enumerator>=0.4,<0.5 \
			devel/hs-transformers>=0.2,<0.4
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
