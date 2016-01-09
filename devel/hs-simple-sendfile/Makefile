# $OpenBSD: Makefile,v 1.8 2016/01/09 19:10:22 kili Exp $

# XXX newer versions buildable with ghc-7.10 need a new dependency
# 'conduit-extra'.

BROKEN =		needs new dependencies

COMMENT =		cross platform library for the sendfile system call

DISTNAME =		simple-sendfile-0.2.11
REVISION =		0
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-conduit>=0.4.1,<1.1 \
			devel/hs-network
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
