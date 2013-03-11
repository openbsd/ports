# $OpenBSD: Makefile,v 1.13 2013/03/11 11:20:27 espie Exp $

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

VMEM_WARNING=		Yes
NO_TEST=		Yes

.include <bsd.port.mk>
