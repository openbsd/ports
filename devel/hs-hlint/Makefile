# $OpenBSD: Makefile,v 1.20 2015/12/30 21:24:31 kili Exp $

BROKEN=			needs a new dependency (refact)

COMMENT=		source code suggestions for Haskell

DISTNAME=		hlint-1.8.57
CATEGORIES=		devel

HOMEPAGE=		http://community.haskell.org/~ndm/hlint/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m pthread util

MODULES=		converters/libiconv \
			lang/ghc

MODGHC_BUILD=		cabal hackage haddock register

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/cpphs>=1.11 \
			devel/hscolour>=1.17 \
			devel/hs-uniplate>=1.5 \
			lang/hs-haskell-src-exts>=1.14,<1.15

post-install:
	${SUBST_CMD} -c ${WRKSRC}/data/hlint.1 ${PREFIX}/man/man1/hlint.1
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/man/man1/

.include <bsd.port.mk>
