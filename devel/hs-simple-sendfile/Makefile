# $OpenBSD: Makefile,v 1.4 2013/01/20 18:03:29 kili Exp $

COMMENT =		cross platform library for the sendfile system call

DISTNAME =		simple-sendfile-0.2.4
REVISION =		1
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-conduit>=0.4.1,<0.5 \
			devel/hs-network \
			devel/hs-transformers>=0.2.2,<0.4
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
