# $OpenBSD: Makefile,v 1.6 2010/11/21 21:11:15 jasper Exp $

COMMENT=		abstract syntax, lexer, parser and pretty printer

DISTNAME=		haskell-src-exts-1.9.6
CATEGORIES=		lang devel

# 3-clause BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ghc

MODGHC_BUILD=		cabal hackage haddock register

BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/happy
RUN_DEPENDS=		devel/cpphs,-lib>=1.11

VMEM_WARNING=		Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
