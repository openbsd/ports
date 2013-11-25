# $OpenBSD: Makefile,v 1.14 2013/11/25 14:16:23 sthen Exp $

COMMENT=		abstract syntax, lexer, parser and pretty printer

DISTNAME=		haskell-src-exts-1.13.3
REVISION=		1
CATEGORIES=		lang devel

# 3-clause BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ghc

MODGHC_BUILD=		cabal hackage haddock register

BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/happy
RUN_DEPENDS=		devel/cpphs,-lib>=1.3

NO_TEST=		Yes

.include <bsd.port.mk>
