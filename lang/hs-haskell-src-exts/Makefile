# $OpenBSD: Makefile,v 1.16 2015/09/21 20:32:18 kili Exp $

BROKEN=			needs an update

COMMENT=		abstract syntax, lexer, parser and pretty printer

DISTNAME=		haskell-src-exts-1.14.0.1
CATEGORIES=		lang devel

# 3-clause BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ghc

MODGHC_BUILD=		cabal hackage haddock register

BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/happy>=1.17
RUN_DEPENDS=		devel/cpphs,-lib>=1.3

NO_TEST=		Yes

.include <bsd.port.mk>
