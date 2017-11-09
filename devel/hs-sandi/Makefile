# $OpenBSD: Makefile,v 1.4 2017/11/09 07:58:41 kili Exp $

BROKEN =		missing dependency

COMMENT =		data encoding library

DISTNAME =		sandi-0.4.1
CATEGORIES =		devel

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	CE2FEFbNCNW62Jp9Seg67k

BUILD_DEPENDS =		${RUN_DEPENDS}

# Missing: textproc/hs-stringsearch>=0.3,<0.4
RUN_DEPENDS =		devel/hs-conduit>=1.2,<1.3 \
			devel/hs-exceptions>=0.6,<0.9

.include <bsd.port.mk>
