# $OpenBSD: Makefile,v 1.6 2010/11/21 21:11:26 jasper Exp $

COMMENT=		source code suggestions for Haskell

DISTNAME=		hlint-1.8.3
CATEGORIES=		devel

HOMEPAGE=		http://community.haskell.org/~ndm/hlint/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c gmp m pthread util

MODULES=		converters/libiconv \
			lang/ghc

MODGHC_BUILD=		cabal hackage haddock register

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/cpphs,-lib \
			hscolour->=1.17:devel/hscolour \
			devel/hs-transformers \
			devel/hs-uniplate \
			STEM->=1.9.6:lang/hs-haskell-src-exts
LIB_DEPENDS=		devel/gmp

post-install:
	${INSTALL_MAN} ${WRKSRC}/data/hlint.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
