# $OpenBSD: Makefile,v 1.2 2011/09/16 10:31:20 espie Exp $

COMMENT=                prototype compiler for the Feldspar DSL

DISTNAME=               feldspar-compiler-0.4.0.2
REVISION=		0

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
