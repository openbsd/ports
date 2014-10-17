# $OpenBSD: Makefile,v 1.8 2014/10/17 11:15:03 jasper Exp $

COMMENT=                prototype compiler for the Feldspar DSL

DISTNAME=               feldspar-compiler-0.6.0.2
REVISION=		2

WANTLIB +=		c m pthread util

MODULES+=		converters/libiconv

BUILD_DEPENDS=          ${RUN_DEPENDS}
RUN_DEPENDS=            devel/hs-MonadCatchIO-mtl \
			devel/hs-ansi-terminal \
			devel/hs-hint \
			devel/hs-mtl \
			lang/feldspar/language>=0.6,<0.7 \
			lang/hs-haskell-src-exts>=1.12 \
			lang/hs-syntactic>=1.4,<1.5

.include <bsd.port.mk>
