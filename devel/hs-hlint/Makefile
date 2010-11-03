# $OpenBSD: Makefile,v 1.4 2010/11/03 22:13:38 kili Exp $

COMMENT=		source code suggestions for Haskell

DISTNAME=		hlint-1.8
REVISION=		1
CATEGORIES=		devel

HOMEPAGE=		http://community.haskell.org/~ndm/hlint/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c gmp m pthread util

MODULES=		converters/libiconv \
			lang/ghc

MODGHC_BUILD=		cabal hackage haddock register
USE_GROFF =	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::devel/cpphs,-lib \
			:hscolour->=1.17:devel/hscolour \
			::devel/hs-uniplate \
			::lang/hs-haskell-src-exts
LIB_DEPENDS=		::devel/gmp

post-install:
	${INSTALL_MAN} ${WRKSRC}/data/hlint.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
