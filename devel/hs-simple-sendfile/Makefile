# $OpenBSD: Makefile,v 1.5 2013/03/11 10:50:08 espie Exp $

COMMENT =		cross platform library for the sendfile system call

DISTNAME =		simple-sendfile-0.2.4
REVISION =		1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-conduit>=0.4.1,<0.5 \
			devel/hs-network \
			devel/hs-transformers>=0.2.2,<0.4
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
