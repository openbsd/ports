# $OpenBSD: Makefile,v 1.18 2016/01/20 16:26:19 kili Exp $

COMMENT=		abstract syntax, lexer, parser and pretty printer

DISTNAME=		haskell-src-exts-1.17.1
REVISION=		0
CATEGORIES=		lang devel

# 3-clause BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ghc

MODGHC_BUILD=		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	Ba5IEoAS5WYHxGfdzFIO5T

BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/happy>=1.19
RUN_DEPENDS=		devel/cpphs,-lib>=1.3

NO_TEST=		Yes

.include <bsd.port.mk>
