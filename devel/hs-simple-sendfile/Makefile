# $OpenBSD: Makefile,v 1.1.1.1 2011/11/16 14:14:05 kili Exp $

COMMENT =		cross platform library for the sendfile system call

DISTNAME =		simple-sendfile-0.1.3
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-enumerator \
			devel/hs-network \
			devel/hs-transformers
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
