# $OpenBSD: Makefile,v 1.5 2013/01/20 18:05:02 kili Exp $

COMMENT=		language front-end and interpreter for the Feldspar DSL

DISTNAME=		feldspar-language-0.6.0.2
REVISION=		0

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/hs-QuickAnnotate>=0.6,<0.7 \
			devel/hs-QuickCheck>=2.4,<3 \
			devel/hs-data-hash>=0.1,<0.3 \
			devel/hs-data-lens>=2.10,<2.11 \
			devel/hs-monad-par>=0.3,<0.4 \
			devel/hs-mtl>=2.0,<2.2 \
			devel/hs-patch-combinators>=0.1,<0.2 \
			devel/hs-random \
			devel/hs-type-level>=0.2.4,<0.3 \
			devel/hs-tagged>=0.4,<0.5 \
			devel/hs-tuple>=0.2,<0.3 \
			lang/hs-syntactic>=1.4,<1.5

# On amd64, ghc needs almost 2GB to build this.
VMEM_WARNING=		Yes

# Note that some of the examples depend on feldspar-compiler.
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/hs-feldspar-language/
	cd ${WRKSRC}/examples/ && umask 022 && \
		pax -rw . ${PREFIX}/share/examples/hs-feldspar-language/

.include <bsd.port.mk>
