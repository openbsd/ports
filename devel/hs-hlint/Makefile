# $OpenBSD: Makefile,v 1.17 2014/09/08 17:04:51 jasper Exp $

COMMENT=		source code suggestions for Haskell

DISTNAME=		hlint-1.8.29
REVISION=		3
CATEGORIES=		devel

HOMEPAGE=		http://community.haskell.org/~ndm/hlint/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m pthread util

MODULES=		converters/libiconv \
			lang/ghc

MODGHC_BUILD=		cabal hackage haddock register

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/cpphs,-lib>=1.11,<1.14 \
			devel/hscolour>=1.17,<1.21 \
			devel/hs-syb \
			devel/hs-transformers>=0.0,<0.4 \
			devel/hs-uniplate>=1.5,<1.7 \
			lang/hs-haskell-src-exts>=1.11,<1.14

post-install:
	${SUBST_CMD} -c ${WRKSRC}/data/hlint.1 ${PREFIX}/man/man1/hlint.1
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/man/man1/

.include <bsd.port.mk>
