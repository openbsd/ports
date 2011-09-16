# $OpenBSD: Makefile,v 1.9 2011/09/16 10:31:21 espie Exp $

COMMENT=		abstract syntax, lexer, parser and pretty printer

DISTNAME=		haskell-src-exts-1.11.1
REVISION=		0
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
