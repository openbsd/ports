# $OpenBSD: Makefile,v 1.4 2012/10/11 14:39:45 dcoppa Exp $

COMMENT=                prototype compiler for the Feldspar DSL

DISTNAME=               feldspar-compiler-0.4.0.2
REVISION=		2

WANTLIB +=		c m pthread util

MODULES+=		converters/libiconv

BUILD_DEPENDS=          ${RUN_DEPENDS}
RUN_DEPENDS=            devel/hs-MonadCatchIO-mtl \
                        devel/hs-ansi-terminal \
			devel/hs-hint \
                        devel/hs-mtl \
                        lang/feldspar/language \
			lang/hs-haskell-src-exts

.include <bsd.port.mk>
