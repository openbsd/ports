# $OpenBSD: Makefile,v 1.1.1.1 2011/05/02 20:45:39 jasper Exp $

COMMENT=                prototype compiler for the Feldspar DSL

DISTNAME=               feldspar-compiler-0.4.0.2

WANTLIB += c gmp m pthread util

MODULES+=		converters/libiconv

BUILD_DEPENDS=          ${RUN_DEPENDS}
RUN_DEPENDS=            devel/hs-MonadCatchIO-mtl \
                        devel/hs-ansi-terminal \
			devel/hs-hint \
                        devel/hs-mtl \
                        lang/feldspar/language \
			lang/hs-haskell-src-exts

.include <bsd.port.mk>
