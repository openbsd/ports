# $OpenBSD: Makefile,v 1.12 2013/05/04 21:17:17 kili Exp $

COMMENT =		Snap project starter and glue code library

DISTNAME =		snap-0.9.2.2
REVISION =		3
CATEGORIES =		www
HOMEPAGE =		http://snapframework.com/

MAINTAINER =		Jim Razmus II <jim@openbsd.org>, \
			Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		converters/libiconv \
			lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

# Support dynamic project reloading via hint.
MODGHC_SETUP_CONF_ARGS =-f hint

WANTLIB +=		c m pthread util z

RUN_DEPENDS +=		devel/hs-MonadCatchIO-transformers>=0.2,<0.4 \
			devel/hs-aeson>=0.6,<0.7 \
			devel/hs-cereal>=0.3,<0.4 \
			devel/hs-configurator>=0.1,<0.3 \
			devel/hs-data-lens>=2.0.1,<2.11 \
			devel/hs-data-lens-template>=2.1,<2.2 \
			devel/hs-directory-tree>=0.10,<0.12 \
			devel/hs-hashable>=1.1,<1.2 \
			devel/hs-logict>=0.4.2,<0.6 \
			devel/hs-mtl>2.0,<2.2 \
			devel/hs-stm>=2.2,<2.5 \
			devel/hs-syb>=0.1,<0.4 \
			devel/hs-text>=0.11,<0.12 \
			devel/hs-transformers>=0.2,<0.4 \
			devel/hs-unordered-containers>=0.1.4,<0.3 \
			devel/hs-vector>=0.7.1,<0.11 \
			devel/hs-vector-algorithms>=0.4,<0.6 \
			security/hs-mwc-random>=0.8,<0.13 \
			security/hs-pwstore-fast>=2.3,<2.4 \
			textproc/hs-attoparsec>=0.10,<0.11 \
			textproc/hs-heist>=0.7,<0.9 \
			textproc/hs-xmlhtml>=0.1,<0.3 \
			www/hs-clientsession>=0.8,<0.9 \
			www/hs-snap-core>=0.9.2,<0.10 \
			www/hs-snap-server>=0.9.2,<0.10

# Those are NOT mentioned in snap.cabal, but they are required by
# default snap projects created with "snap init", so it's probably a
# good idea to add them:
RUN_DEPENDS +=		www/hs-snap-loader-dynamic \
			www/hs-snap-loader-static

BUILD_DEPENDS +=	${RUN_DEPENDS}

# Haddock is a memory pig on this port.
VMEM_WARNING =		Yes

# Reuse snaps minimal Setup.hs in the project templates to allow
# building a snap project with something like
# $ runghc Setup.hs configure && runghc Setup.hs build
post-extract:
.for t in barebones default tutorial
	@cp -p ${WRKSRC}/Setup.hs ${WRKSRC}/project_template/$t/Setup.hs
.endfor

.include <bsd.port.mk>
