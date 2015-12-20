# $OpenBSD: Makefile,v 1.19 2015/12/20 11:30:36 kili Exp $

COMMENT =		Int-indexed arrays

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
DISTNAME =		vector-0.11.0.0
REVISION =		0
CATEGORIES =		devel

MAINTAINER =		Jim Razmus II <jim@openbsd.org>, \
			Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	LmZ3LQW4ivu8MsQuVgukln

RUN_DEPENDS +=		devel/hs-primitive>=0.5.0.1,<0.7
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
