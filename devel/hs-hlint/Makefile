# $OpenBSD: Makefile,v 1.11 2011/09/16 09:24:50 espie Exp $

COMMENT=		source code suggestions for Haskell

DISTNAME=		hlint-1.8.13
REVISION =		0
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
			devel/hscolour>=1.17,<1.20 \
			devel/hs-syb \
			devel/hs-transformers<0.3 \
			devel/hs-uniplate>=1.5,<1.7 \
			lang/hs-haskell-src-exts>=1.11.*
LIB_DEPENDS=		devel/gmp

post-install:
	${SUBST_CMD} -c ${WRKSRC}/data/hlint.1 ${PREFIX}/man/man1/hlint.1
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/man/man1/

.include <bsd.port.mk>
