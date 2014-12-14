# $OpenBSD: Makefile,v 1.12 2014/12/14 23:21:50 kili Exp $

COMMENT =		fast, lightweight YAML loader and dumper

DISTNAME =		HsSyck-0.52
EPOCH =			0
CATEGORIES =		devel

# MIT (see comment in HsSyck.cabal)
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-hashtables \
			devel/hs-syb \
			devel/hs-utf8-string>=0.3

.include <bsd.port.mk>
