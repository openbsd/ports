# $OpenBSD: Makefile,v 1.3 2012/09/02 18:08:33 kili Exp $

BROKEN=			Does not build with ghc-7.4.

COMMENT=		language front-end and interpreter for the Feldspar DSL

DISTNAME=		feldspar-language-0.4.0.2
REVISION=		0

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/hs-QuickCheck>=2.4,<3 \
			devel/hs-tagged>=0.2,<0.3 \
			devel/hs-type-level \
			devel/hs-mtl

# Note that some of the examples depend on feldspar-compiler.
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/hs-feldspar-language/
	cd ${WRKSRC}/Examples/ && umask 022 && \
		pax -rw . ${PREFIX}/share/examples/hs-feldspar-language/

.include <bsd.port.mk>
